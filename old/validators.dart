class Validators {
  static String? notEmpty(String? value, {String field = 'Campo'}) {
    if (value == null || value.trim().isEmpty) return '$field obrigatório';
    return null;
  }

  static String? email(String? value) {
    if (value == null || value.isEmpty) return 'E-mail obrigatório';
    final regex = RegExp(r'^[^@]+@[^@]+\.[^@]+$');
    if (!regex.hasMatch(value)) return 'E-mail inválido';
    return null;
  }

  static String? password(String? value) {
    if (value == null || value.isEmpty) return 'Senha obrigatória';
    if (value.length < 6) return 'Mínimo de 6 caracteres';
    return null;
  }
}
