import 'class_branch.dart';

class ClassDefinition {
  final String id;
  final String name;
  final String role;
  final String primaryAttr;
  final String secondaryAttr;
  final int hpPerLevel;
  final Map<String, int> baseAttrs;
  final Map<String, num> multipliers;
  final List<ClassBranch> branches;

  const ClassDefinition({
    required this.id,
    required this.name,
    required this.role,
    required this.primaryAttr,
    required this.secondaryAttr,
    required this.hpPerLevel,
    required this.baseAttrs,
    required this.multipliers,
    required this.branches,
  });

  factory ClassDefinition.fromJson(Map<String, dynamic> json) {
    return ClassDefinition(
      id: json['id'],
      name: json['name'],
      role: json['role'],
      primaryAttr: json['primary_attr'],
      secondaryAttr: json['secondary_attr'],
      hpPerLevel: json['hp_per_level'],
      baseAttrs: Map<String, int>.from(json['base_attrs'] ?? {}),
      multipliers: Map<String, num>.from(json['multipliers'] ?? {}),
      branches: (json['branches'] as List<dynamic>? ?? [])
          .map((b) => ClassBranch.fromJson(b))
          .toList(),
    );
  }
}
