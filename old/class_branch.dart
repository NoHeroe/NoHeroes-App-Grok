class ClassBranch {
  final String id;
  final String name;
  final int unlockLevel;
  final Map<String, num> modifiers;
  final String description;

  const ClassBranch({
    required this.id,
    required this.name,
    required this.unlockLevel,
    required this.modifiers,
    required this.description,
  });

  factory ClassBranch.fromJson(Map<String, dynamic> json) {
    return ClassBranch(
      id: json['id'],
      name: json['name'],
      unlockLevel: json['unlock_level'],
      modifiers: Map<String, num>.from(json['modifiers'] ?? {}),
      description: json['description'] ?? "",
    );
  }
}
