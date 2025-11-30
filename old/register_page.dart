import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../application/auth/auth_providers.dart';
import '../../../core/constants/game_meta.dart';
import '../app_shell.dart';

class RegisterPage extends ConsumerStatefulWidget {
  const RegisterPage({super.key});

  @override
  ConsumerState<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends ConsumerState<RegisterPage> {
  final _form1 = GlobalKey<FormState>();
  final _form2 = GlobalKey<FormState>();
  int _step = 1;

  // dados do form
  String name = '';
  String nickname = '';
  String email = '';
  String password = '';
  String classe = '';
  String faccao = '';
  String style = 'solo';
  String? gender; // 👈 novo campo

  @override
  Widget build(BuildContext context) {
    return AppShell(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: _buildGlass(
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 400),
                child: _step == 1 ? _buildStep1() : _buildStep2(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildGlass(Widget child) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          width: 360,
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.45),
            border: Border.all(color: Colors.white.withOpacity(0.08)),
            borderRadius: BorderRadius.circular(24),
          ),
          child: child,
        ),
      ),
    );
  }

  // ===== Etapa 1 – Dados pessoais + gênero =====
  Widget _buildStep1() {
    return Form(
      key: _form1,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Registro — Etapa 1',
            style: TextStyle(fontSize: 22, fontFamily: 'CinzelDecorative'),
          ),
          const SizedBox(height: 20),

          // 👇 Seleção de GÊNERO
          const Text(
            'Selecione seu gênero',
            style: TextStyle(color: Colors.white70, fontSize: 14),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _genderButton(
                icon: Icons.male,
                color: Colors.blueAccent,
                value: "male",
              ),
              _genderButton(
                icon: Icons.female,
                color: Colors.pinkAccent,
                value: "female",
              ),
            ],
          ),
          if (gender == null)
            const Padding(
              padding: EdgeInsets.only(top: 6),
              child: Text("Selecione uma opção",
                  style: TextStyle(color: Colors.redAccent)),
            ),

          const SizedBox(height: 24),

          _input('Nome completo', (v) => name = v!),
          _input('Nickname', (v) => nickname = v!),
          _input('E-mail', (v) => email = v!, type: TextInputType.emailAddress),
          _input('Senha', (v) => password = v!, obscure: true),
          const SizedBox(height: 20),

          ElevatedButton(
            onPressed: () {
              if (gender == null) {
                setState(() {});
                return;
              }

              if (_form1.currentState!.validate()) {
                _form1.currentState!.save();
                setState(() => _step = 2);
              }
            },
            child: const Text('Avançar →'),
          ),
        ],
      ),
    );
  }

  Widget _genderButton({required IconData icon, required Color color, required String value}) {
    final selected = (gender == value);

    return GestureDetector(
      onTap: () => setState(() => gender = value),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: selected ? color : Colors.white30,
            width: selected ? 3 : 1,
          ),
          color: selected ? color.withOpacity(0.15) : Colors.transparent,
        ),
        child: Icon(
          icon,
          size: 40,
          color: selected ? color : Colors.white70,
        ),
      ),
    );
  }

  // ===== Etapa 2 – Classe / Facção / Estilo =====
  Widget _buildStep2() {
    return Form(
      key: _form2,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Registro — Etapa 2',
            style: TextStyle(fontSize: 22, fontFamily: 'CinzelDecorative'),
          ),
          const SizedBox(height: 16),
          _dropdown('Classe', GameMeta.classes, (v) => classe = v!),
          _dropdown('Facção', GameMeta.factions, (v) => faccao = v!),
          _dropdown('Estilo de Jogo', GameMeta.playstyles, (v) => style = v!),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () async {
              if (_form2.currentState!.validate()) {
                _form2.currentState!.save();
                await _register();
              }
            },
            child: const Text('Finalizar Registro'),
          ),
          const SizedBox(height: 8),
          TextButton(
            onPressed: () => setState(() => _step = 1),
            child: const Text('← Voltar'),
          ),
        ],
      ),
    );
  }

  Widget _input(String label, Function(String?) onSave,
      {bool obscure = false, TextInputType? type}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: TextFormField(
        obscureText: obscure,
        keyboardType: type,
        decoration: InputDecoration(
          labelText: label,
          filled: true,
          fillColor: Colors.white.withOpacity(0.05),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        ),
        validator: (v) => v == null || v.isEmpty ? 'Campo obrigatório' : null,
        onSaved: onSave,
      ),
    );
  }

  Widget _dropdown(String label, List<String> items, Function(String?) onSave) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          labelText: label,
          filled: true,
          fillColor: Colors.white.withOpacity(0.05),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        ),
        items: items
            .map((e) => DropdownMenuItem(value: e, child: Text(e)))
            .toList(),
        onChanged: (_) {},
        onSaved: onSave,
        validator: (v) => v == null ? 'Selecione uma opção' : null,
      ),
    );
  }

  // ===== Salvar no banco e logar =====
  Future<void> _register() async {
    final repo = ref.read(authRepoProvider);
    final authNotifier = ref.read(authStateProvider.notifier);

    final dbUser = await repo.register(
      nickname,
      password: password,
      email: email,
      classe: classe,
      faccao: faccao,
      style: style,
      gender: gender!, // 👈 obrigatório
    );

    if (dbUser == null) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Falha ao criar conta. Nick já existe?')),
        );
      }
      return;
    }

    await authNotifier.setUser(repo.toDomain(dbUser));

    if (!mounted) return;

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Conta criada com sucesso!')),
    );
  }
}
