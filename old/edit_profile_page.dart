import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import '../../core/widgets/glass_container.dart';
import '../../core/widgets/animated_bg.dart';
import '../../application/auth/auth_providers.dart';
import '../../domain/models/user.dart' as domain;

class EditProfilePage extends ConsumerStatefulWidget {
  const EditProfilePage({super.key});

  @override
  ConsumerState<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends ConsumerState<EditProfilePage> {
  final _formKey = GlobalKey<FormState>();
  final _nickCtrl = TextEditingController();
  final _emailCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();
  final _bioCtrl = TextEditingController();
  final _alturaCtrl = TextEditingController();
  final _pesoCtrl = TextEditingController();
  DateTime? _birthDate;
  File? _avatarFile;

  final _picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    final user = ref.read(authStateProvider);
    if (user != null) {
      _nickCtrl.text = user.nickname;
      _emailCtrl.text = user.email;
      _bioCtrl.text = user.bio ?? '';
      _alturaCtrl.text = user.height != null
          ? (user.height! / 100).toStringAsFixed(2)
          : '';
      _pesoCtrl.text = user.weight?.toStringAsFixed(1) ?? '';
      if (user.birthDate != null) {
        _birthDate = DateTime.fromMillisecondsSinceEpoch(user.birthDate!);
      }
    }
  }

  Future<void> _pickAvatar() async {
    final picked =
        await _picker.pickImage(source: ImageSource.gallery, imageQuality: 80);
    if (picked != null) {
      setState(() => _avatarFile = File(picked.path));
    }
  }

  Future<void> _pickBirthDate(BuildContext context) async {
    final now = DateTime.now();
    final initial = _birthDate ?? DateTime(now.year - 20);
    final picked = await showDatePicker(
      context: context,
      initialDate: initial,
      firstDate: DateTime(1900),
      lastDate: now,
      builder: (ctx, child) {
        return Theme(
          data: ThemeData.dark().copyWith(
            colorScheme:
                const ColorScheme.dark(primary: Colors.deepPurpleAccent),
          ),
          child: child!,
        );
      },
    );
    if (picked != null) setState(() => _birthDate = picked);
  }

  Future<void> _saveProfile() async {
  if (!_formKey.currentState!.validate()) return;

  final user = ref.read(authStateProvider);
  if (user == null) return;

  final updated = domain.User(
    id: user.id,
    nickname: _nickCtrl.text.trim(),
    email: _emailCtrl.text.trim(),
    level: user.level,
    xp: user.xp,
    gold: user.gold,
    streakDays: user.streakDays,
    disciplineMultiplier: user.disciplineMultiplier,
    forca: user.forca,
    destreza: user.destreza,
    constituicao: user.constituicao,
    inteligencia: user.inteligencia,
    espirito: user.espirito,
    carisma: user.carisma,
    estilo: user.estilo,
    createdAt: user.createdAt,
    rank: user.rank,
    classe: user.classe,
    faccao: user.faccao,
    bio: _bioCtrl.text.trim(),
    height: double.tryParse(_alturaCtrl.text.replaceAll(',', '.')) != null
        ? double.parse(_alturaCtrl.text.replaceAll(',', '.')) * 100
        : user.height,
    weight: double.tryParse(_pesoCtrl.text.replaceAll(',', '.')) ?? user.weight,
    avatarPath: _avatarFile?.path ?? user.avatarPath,
    birthDate: _birthDate?.millisecondsSinceEpoch ?? user.birthDate,
  );

  await ref.read(authStateProvider.notifier).setUser(updated);

  if (mounted) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Alterações salvas com sucesso!'),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.black.withOpacity(0.8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        duration: const Duration(seconds: 2),
      ),
    );

    // 🔹 Dá 400 ms de delay para o SnackBar ser exibido antes de fechar
    Future.delayed(const Duration(milliseconds: 400), () {
      if (mounted) Navigator.pop(context);
    });
  }
}

  @override
  Widget build(BuildContext context) {
    final user = ref.watch(authStateProvider);

    return Stack(
      children: [
        const AnimatedBg(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.black.withOpacity(0.35),
            title: const Text('Editar Perfil'),
            elevation: 0,
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    // Avatar
                    GestureDetector(
                      onTap: _pickAvatar,
                      child: GlassContainer(
                        blur: 10,
                        opacity: 0.25,
                        borderRadius: BorderRadius.circular(100),
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: _avatarFile != null
                              ? FileImage(_avatarFile!)
                              : (user?.avatarPath != null
                                  ? AssetImage(user!.avatarPath!)
                                      as ImageProvider<Object>
                                  : const AssetImage(
                                      'assets/images/default_avatar.png')),
                        ),
                      ),
                    ),
                    const SizedBox(height: 18),

                    _buildTextField('Nickname', _nickCtrl, validator: (v) {
                      if (v == null || v.isEmpty) return 'Digite um nickname';
                      return null;
                    }),
                    const SizedBox(height: 10),
                    _buildTextField('Email', _emailCtrl,
                        keyboardType: TextInputType.emailAddress),
                    const SizedBox(height: 10),
                    _buildTextField('Senha', _passwordCtrl,
                        obscure: true, hint: 'Deixe vazio para manter'),
                    const SizedBox(height: 10),
                    _buildTextField('Altura (m)', _alturaCtrl,
                        keyboardType:
                            const TextInputType.numberWithOptions(decimal: true)),
                    const SizedBox(height: 10),
                    _buildTextField('Peso (kg)', _pesoCtrl,
                        keyboardType:
                            const TextInputType.numberWithOptions(decimal: true)),
                    const SizedBox(height: 10),
                    _buildDateSelector(context),
                    const SizedBox(height: 10),
                    _buildTextField('Biografia', _bioCtrl, maxLines: 3),
                    const SizedBox(height: 30),

                    // Botão salvar
                    GestureDetector(
                      onTap: _saveProfile,
                      child: GlassContainer(
                        blur: 10,
                        opacity: 0.25,
                        borderRadius: BorderRadius.circular(12),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 10),
                        child: const Text(
                          'Salvar Alterações',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTextField(
    String label,
    TextEditingController controller, {
    bool obscure = false,
    String? hint,
    int maxLines = 1,
    TextInputType? keyboardType,
    String? Function(String?)? validator,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 14,
            )),
        const SizedBox(height: 6),
        TextFormField(
          controller: controller,
          obscureText: obscure,
          maxLines: maxLines,
          validator: validator,
          keyboardType: keyboardType,
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: hint,
            hintStyle:
                TextStyle(color: Colors.white.withOpacity(0.4), fontSize: 13),
            filled: true,
            fillColor: Colors.white.withOpacity(0.05),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.white.withOpacity(0.1)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.white54),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDateSelector(BuildContext context) {
    final label = _birthDate != null
        ? '${_birthDate!.day.toString().padLeft(2, '0')}/${_birthDate!.month.toString().padLeft(2, '0')}/${_birthDate!.year}'
        : 'Selecionar data de nascimento';
    return Align(
      alignment: Alignment.centerLeft,
      child: GestureDetector(
        onTap: () => _pickBirthDate(context),
        child: GlassContainer(
          blur: 10,
          opacity: 0.25,
          padding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          borderRadius: BorderRadius.circular(12),
          child: Text(
            label,
            style: const TextStyle(color: Colors.white70, fontSize: 14),
          ),
        ),
      ),
    );
  }
}
