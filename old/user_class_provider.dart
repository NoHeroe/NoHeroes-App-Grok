import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'class_definition.dart';
import 'class_branch.dart';
import 'class_config_provider.dart';
import '../../application/auth/auth_providers.dart';

final userClassProvider = Provider<ClassDefinition?>((ref) {
  final user = ref.watch(authStateProvider);
  if (user == null) return null;

  final classesAsync = ref.watch(classConfigProvider);
  final classes = classesAsync.asData?.value;
  if (classes == null) return null;

  return classes[user.classeBaseId];
});

final userBranchProvider = Provider<ClassBranch?>((ref) {
  final user = ref.watch(authStateProvider);
  if (user == null) return null;

  final branchId = user.classeBranchId;
  if (branchId == null) return null;

  final classe = ref.watch(userClassProvider);
  if (classe == null) return null;

  try {
    return classe.branches.firstWhere((b) => b.id == branchId);
  } catch (_) {
    return null;
  }
});
