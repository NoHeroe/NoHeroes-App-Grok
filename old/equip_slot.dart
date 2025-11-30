enum EquipSlot {
  capacete,
  peitoral,
  luvas,
  botas,
  calca,
  ombreira,
  anel,
  cinto,
  reliquia,
  mao1,
  mao2,
}

extension EquipSlotKey on EquipSlot {
  String get key {
    switch (this) {
      case EquipSlot.capacete: return "head";
      case EquipSlot.peitoral: return "chest";
      case EquipSlot.luvas: return "gloves";
      case EquipSlot.botas: return "boots";
      case EquipSlot.calca: return "legs";
      case EquipSlot.ombreira: return "shoulder";
      case EquipSlot.anel: return "ring";
      case EquipSlot.cinto: return "belt";
      case EquipSlot.reliquia: return "relic";
      case EquipSlot.mao1: return "weapon_main";
      case EquipSlot.mao2: return "weapon_off";
    }
  }
}
