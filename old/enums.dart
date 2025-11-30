// Tipo macro da quest
enum QuestType {
  dailyXp,    // Daily XP Quests
  shadow,     // Shadow Quests (Sombras)
  story,      // Story / Lore
  training,   // Treino físico
  life,       // Vida real (estudo, trabalho, carreira, saúde)
  boss,       // Desafios grandes
  event,      // Sazonais / datas específicas
  coop,       // Co-op / duo/team (futuro)
  customUser, // Criada pelo usuário
}

// Origem da quest (ESSENCIAL)
enum QuestOrigin {
  system,
  userCustom,
}

// Categoria principal da quest (pode ter mais de uma)
enum QuestCategory {
  mental,
  physical,
  spiritual,
}

// Dificuldade / peso
enum QuestDifficulty {
  veryEasy,
  easy,
  normal,
  hard,
  insane,
}

// Rank da quest (E–S)
enum QuestRank {
  E,
  D,
  C,
  B,
  A,
  S,
}

// Estado da quest para o usuário
enum QuestStatus {
  locked,
  available,
  inProgress,
  completed,
  failed,
  expired,
}

// Como o progresso é rastreado
enum QuestTrackingType {
  manual,    // usuário marca "concluído"
  counter,   // contador (reps, páginas, linhas...)
  timer,     // tempo (min, seg)
  writing,   // escrita / diário interno
  reading,   // leitura interna (ebooks/mangás)
}

// Unidade do progresso (para counter/writing/reading)
enum QuestMetricUnit {
  none,
  reps,
  minutes,
  seconds,
  lines,
  words,
  pages,
  chapters,
  sessions,
  percent,
}

// Tipo de conteúdo interno ligado à quest
enum QuestContentType {
  none,
  ebook,
  manga,
  anime,
  article,
  video,
  audio,
  meditation,
  practice,
  custom,
}
// ===========================
// SHADOW SYSTEM
// ===========================

/// Tipo de arquétipo de sombra
enum ShadowArchetypeType {
  disciplina,      // procrastinação, indisciplina
  orgulho,         // ego, arrogância
  medo,            // medo de falhar, rejeição
  ira,             // raiva, impulsividade
  fuga,            // escapismo, vícios leves
  vaidade,         // aparência, validação externa
  apatia,          // vazio, falta de propósito
  outro,           // fallback
}

/// Tipo de evento de sombra
enum ShadowEventKind {
  positive,     // reduz sombra
  negative,     // aumenta sombra
  neutral,      // registro neutro
  crisis,       // crise disparada
  breakthrough, // grande avanço
}

/// Origem do evento
enum ShadowEventSourceType {
  habit,      // hábito diário
  quest,      // quest normal ou shadow quest
  system,     // sistema interno (decay/reset)
  manual,     // anotação manual
}

/// Nível de crise da sombra
enum ShadowCrisisLevel {
  none,
  mild,
  moderate,
  severe,
}
// ===========================
// I T E M S   (NOVO)
// ===========================

/// Tier interno para balanceamento avançado.
enum ItemTier {
  t0,
  t1,
  t2,
  t3,
  t4,
  t5,
  relic,
  divine,
}

/// Tipo principal do item (usado em filtros / avatar / lógica de equip).
enum ItemType {
  weapon,
  armor,
  accessory,
  consumable,
  material,
  quest,
  cosmetic,
  pet,
}

