import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:event_bus/event_bus.dart';

/// ===============================================================
/// 🌐 EVENT BUS GLOBAL
/// ===============================================================
/// Um único EventBus para:
///   - ShadowService
///   - HabitService
///   - QuestEngine
///   - ReadingTracker
///   - Journal (diário)
///
/// Tudo conversa pelo eventBus, evitando dependências circulares.
/// ===============================================================

final eventBusProvider = Provider<EventBus>((ref) {
  return EventBus();
});


/// ===============================================================
/// 🔥 EVENTOS PADRÃO DO SISTEMA
/// (O app inteiro deve disparar estes quando ocorrerem)
/// ===============================================================

/// Hábito do dia falhou
class HabitFailedEvent {
  final String habitId;
  HabitFailedEvent(this.habitId);
}

/// Hábito concluído
class HabitCompletedEvent {
  final String habitId;
  HabitCompletedEvent(this.habitId);
}

/// Diário recebeu nova escrita (um bloco de texto)
class DiaryWrittenEvent {
  final String text;
  final String entryId;
  DiaryWrittenEvent(this.text, {required this.entryId});
}

/// Progresso de leitura
class ReadingProgressEvent {
  final String contentId;       // ebookId, mangaId, etc.
  final int pagesRead;
  final int inactiveDays;
  ReadingProgressEvent({
    required this.contentId,
    required this.pagesRead,
    required this.inactiveDays,
  });
}

/// Quest concluída
class QuestCompletedEvent {
  final String questId;
  final String instanceId;
  QuestCompletedEvent(this.questId, this.instanceId);
}

/// Quest falhou
class QuestFailedEvent {
  final String questId;
  final String instanceId;
  QuestFailedEvent(this.questId, this.instanceId);
}

/// Progresso incremental em uma Quest (trackingType = counter/timer/etc.)
class QuestProgressEvent {
  final String questInstanceId;
  final int amount;
  QuestProgressEvent(this.questInstanceId, this.amount);
}

