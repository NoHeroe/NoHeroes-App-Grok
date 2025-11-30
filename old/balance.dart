class Balance {
  // Limites diários
  static const sideFreeLimit = 5;
  static const individualFreeLimit = 5;

  // Custos (ouro)
  static const repair = {
    'common': 10,
    'rare': 25,
    'mystic': 50,
    'legendary': 150,
  };

  static const crafting = {
    'simple': 15,
    'medium': 40,
    'advanced': 100,
  };

  static const openParty = 100;
  static const createGuild = 500;

  // Recompensa diária streak
  static const streakMaxMultiplier = 1.5;
}
