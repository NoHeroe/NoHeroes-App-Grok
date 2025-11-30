class QuestCompletedEvent {
  final QuestInstance instance;
  QuestCompletedEvent(this.instance);
}

class QuestFailedEvent {
  final QuestInstance instance;
  QuestFailedEvent(this.instance);
}
