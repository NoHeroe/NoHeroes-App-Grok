# 🏛️ ARQUITETURA NOHEROES APP
> Clean Architecture + Riverpod + Drift | Flutter 3.19+

---

## 📐 Padrão Arquitetural

**Clean Architecture** com 3 camadas:
- `domain/` → regras de negócio puras (sem Flutter, sem Drift)
- `data/` → implementação concreta (Drift, HTTP, SharedPrefs)
- `presentation/` → UI, providers Riverpod, widgets

**State Management:** Riverpod 2.x (AsyncNotifier + StateNotifier)  
**Navegação:** GoRouter (rotas nomeadas, guards de autenticação)  
**Banco local:** Drift + SQLite (offline-first)  
**Event Bus:** para comunicação entre sistemas (sombra ↔ hábitos ↔ quests)

---

## 🗂️ Estrutura de Pastas Completa

```
lib/
├── main.dart
├── app/
│   ├── app.dart                    # MaterialApp + Riverpod scope
│   ├── router.dart                 # GoRouter — todas as rotas
│   └── providers.dart              # Providers globais (app-level)
│
├── core/
│   ├── constants/
│   │   ├── app_colors.dart         # Paleta: preto, roxo, dourado
│   │   ├── app_typography.dart     # Cinzel + Roboto
│   │   ├── app_sizes.dart          # Espaçamentos e tamanhos
│   │   └── app_strings.dart        # Textos fixos e chaves de l10n
│   ├── theme/
│   │   ├── app_theme.dart          # ThemeData principal (dark)
│   │   └── caelum_decorations.dart # Decorações místicas reutilizáveis
│   ├── routing/
│   │   ├── app_routes.dart         # Constantes de rotas nomeadas
│   │   └── route_guards.dart       # Auth guard, onboarding guard
│   ├── error/
│   │   ├── failures.dart           # Failure classes (domínio)
│   │   └── exceptions.dart         # Exceções de infra
│   ├── extensions/
│   │   ├── context_ext.dart        # BuildContext helpers
│   │   ├── string_ext.dart
│   │   └── datetime_ext.dart       # Cálculo de "Dia em Caelum"
│   ├── utils/
│   │   ├── caelum_calendar.dart    # Conversor Terra ↔ Caelum
│   │   ├── xp_calculator.dart      # Curva XP (1→100)
│   │   └── shadow_state_calc.dart  # Algoritmo de estado da sombra
│   ├── di/
│   │   └── injection.dart          # Setup de providers globais
│   └── widgets/
│       ├── caelum_button.dart       # Botão padrão NoHeroes
│       ├── caelum_card.dart         # Card com borda mística
│       ├── stat_bar.dart            # Barra HP/MP/XP
│       ├── shadow_orb.dart          # Orbe da sombra (indicador)
│       ├── particle_overlay.dart    # Partículas atmosféricas
│       └── loading_ritual.dart      # Loading screen mística
│
├── domain/
│   ├── entities/
│   │   ├── player.dart             # Entidade central do jogador
│   │   ├── shadow.dart             # Estado da Sombra
│   │   ├── habit.dart              # Hábito/Ritual diário
│   │   ├── quest.dart              # Missão (todos os tipos)
│   │   ├── character_class.dart    # Classe do personagem
│   │   ├── faction.dart            # Facção
│   │   ├── item.dart               # Item do inventário
│   │   ├── region.dart             # Região de Caelum
│   │   ├── npc.dart                # NPC
│   │   ├── achievement.dart        # Conquista
│   │   └── event.dart              # Evento de Caelum
│   ├── enums/
│   │   ├── class_type.dart         # Guerreiro, Mago, Ladino...
│   │   ├── shadow_state.dart       # Estável, Caótico, Ascendente...
│   │   ├── quest_type.dart         # Daily, Individual, Shadow...
│   │   ├── quest_status.dart       # Pending, Done, Failed, Partial
│   │   ├── habit_rank.dart         # E, D, C, B, A, S
│   │   ├── item_rarity.dart        # Common, Rare, Epic, Legendary
│   │   ├── player_state.dart       # Estável, Obsessivo, Apático...
│   │   └── faction_type.dart       # Fações do universo
│   ├── repositories/ (interfaces)
│   │   ├── i_player_repository.dart
│   │   ├── i_habit_repository.dart
│   │   ├── i_quest_repository.dart
│   │   ├── i_shadow_repository.dart
│   │   ├── i_inventory_repository.dart
│   │   ├── i_region_repository.dart
│   │   └── i_event_repository.dart
│   └── usecases/
│       ├── player/
│       │   ├── get_player_usecase.dart
│       │   ├── update_player_usecase.dart
│       │   └── calculate_caelum_day.dart
│       ├── habits/
│       │   ├── get_daily_habits_usecase.dart
│       │   ├── complete_habit_usecase.dart
│       │   ├── fail_habit_usecase.dart
│       │   └── create_custom_habit_usecase.dart
│       ├── quests/
│       │   ├── get_active_quests_usecase.dart
│       │   ├── complete_quest_usecase.dart
│       │   └── trigger_shadow_quest_usecase.dart
│       ├── shadow/
│       │   ├── get_shadow_state_usecase.dart
│       │   ├── update_shadow_usecase.dart
│       │   └── check_shadow_triggers_usecase.dart
│       └── progression/
│           ├── add_xp_usecase.dart
│           ├── level_up_usecase.dart
│           └── unlock_content_usecase.dart
│
├── data/
│   ├── database/
│   │   ├── app_database.dart        # Drift Database principal
│   │   ├── tables/
│   │   │   ├── players_table.dart
│   │   │   ├── habits_table.dart
│   │   │   ├── quests_table.dart
│   │   │   ├── shadow_table.dart
│   │   │   ├── inventory_table.dart
│   │   │   ├── items_table.dart
│   │   │   └── events_table.dart
│   │   └── daos/
│   │       ├── player_dao.dart
│   │       ├── habits_dao.dart
│   │       ├── quests_dao.dart
│   │       ├── shadow_dao.dart
│   │       └── inventory_dao.dart
│   ├── datasources/
│   │   ├── local/
│   │   │   ├── player_local_ds.dart
│   │   │   ├── habits_local_ds.dart
│   │   │   └── shadow_local_ds.dart
│   │   └── remote/ (futuro — API)
│   │       └── .gitkeep
│   ├── repositories/ (implementações)
│   │   ├── player_repository_impl.dart
│   │   ├── habit_repository_impl.dart
│   │   ├── quest_repository_impl.dart
│   │   └── shadow_repository_impl.dart
│   └── models/ (DTOs — conversão Drift ↔ Entity)
│       ├── player_model.dart
│       ├── habit_model.dart
│       ├── quest_model.dart
│       └── shadow_model.dart
│
├── presentation/
│   ├── onboarding/
│   │   ├── screens/
│   │   │   ├── awakening_screen.dart     # "Você desperta nas ruínas..."
│   │   │   ├── rescue_screen.dart        # NPC aparece
│   │   │   ├── identity_screen.dart      # Escolha de nome
│   │   │   ├── class_selection_screen.dart
│   │   │   └── first_ritual_screen.dart  # Primeiro hábito
│   │   └── providers/
│   │       └── onboarding_provider.dart
│   │
│   ├── sanctuary/               # HOME — Santuário
│   │   ├── screens/
│   │   │   └── sanctuary_screen.dart
│   │   ├── widgets/
│   │   │   ├── caelum_day_banner.dart   # "Dia 47 em Caelum"
│   │   │   ├── shadow_status_card.dart  # Estado + frase da sombra
│   │   │   ├── daily_summary_card.dart  # Resumo do dia anterior
│   │   │   ├── quick_actions_bar.dart   # Atalhos rápidos
│   │   │   └── sanctuary_drawer.dart    # Menu lateral
│   │   └── providers/
│   │       └── sanctuary_provider.dart
│   │
│   ├── habits/                  # MISSÕES/RITUAIS
│   │   ├── screens/
│   │   │   ├── habits_screen.dart
│   │   │   ├── habit_detail_screen.dart
│   │   │   └── create_habit_screen.dart
│   │   ├── widgets/
│   │   │   ├── habit_card.dart
│   │   │   ├── habit_rank_badge.dart
│   │   │   ├── streak_indicator.dart
│   │   │   └── completion_options.dart  # Completo/Parcial/Niet
│   │   └── providers/
│   │       └── habits_provider.dart
│   │
│   ├── quests/                  # QUESTS
│   │   ├── screens/
│   │   │   ├── quests_screen.dart
│   │   │   ├── quest_detail_screen.dart
│   │   │   └── shadow_quest_screen.dart
│   │   ├── widgets/
│   │   │   ├── quest_card.dart
│   │   │   ├── quest_type_badge.dart
│   │   │   └── shadow_quest_alert.dart
│   │   └── providers/
│   │       └── quests_provider.dart
│   │
│   ├── character/               # PERSONAGEM
│   │   ├── screens/
│   │   │   ├── character_screen.dart
│   │   │   └── skill_tree_screen.dart
│   │   ├── widgets/
│   │   │   ├── avatar_2d_widget.dart
│   │   │   ├── attribute_panel.dart
│   │   │   └── class_badge.dart
│   │   └── providers/
│   │       └── character_provider.dart
│   │
│   ├── shadow_chamber/          # CÂMARA DAS SOMBRAS
│   │   ├── screens/
│   │   │   └── shadow_chamber_screen.dart
│   │   ├── widgets/
│   │   │   ├── shadow_avatar.dart       # Versão sombria do avatar
│   │   │   ├── corruption_indicator.dart
│   │   │   └── shadow_event_card.dart
│   │   └── providers/
│   │       └── shadow_provider.dart
│   │
│   ├── regions/                 # REGIÕES / MAPA
│   │   ├── screens/
│   │   │   ├── regions_screen.dart
│   │   │   └── region_detail_screen.dart
│   │   ├── widgets/
│   │   │   └── region_card.dart
│   │   └── providers/
│   │       └── regions_provider.dart
│   │
│   ├── inventory/               # INVENTÁRIO
│   │   ├── screens/
│   │   │   └── inventory_screen.dart
│   │   ├── widgets/
│   │   │   ├── item_card.dart
│   │   │   └── rarity_border.dart
│   │   └── providers/
│   │       └── inventory_provider.dart
│   │
│   ├── factions/                # FACÇÕES
│   │   ├── screens/
│   │   │   ├── factions_screen.dart
│   │   │   └── faction_detail_screen.dart
│   │   └── providers/
│   │       └── factions_provider.dart
│   │
│   ├── shop/                    # LOJA
│   │   ├── screens/
│   │   │   └── shop_screen.dart
│   │   └── providers/
│   │       └── shop_provider.dart
│   │
│   ├── library/                 # BIBLIOTECA / DIÁRIO
│   │   ├── screens/
│   │   │   ├── library_screen.dart
│   │   │   └── diary_entry_screen.dart
│   │   └── providers/
│   │       └── library_provider.dart
│   │
│   ├── achievements/            # CONQUISTAS
│   │   ├── screens/
│   │   │   └── achievements_screen.dart
│   │   └── providers/
│   │       └── achievements_provider.dart
│   │
│   └── settings/                # CONFIGURAÇÕES
│       ├── screens/
│       │   └── settings_screen.dart
│       └── providers/
│           └── settings_provider.dart
│
└── infrastructure/
    └── event_bus/
        ├── app_events.dart          # Todos os eventos do sistema
        └── event_bus_provider.dart  # Provider do EventBus

assets/
├── fonts/
│   ├── CinzelDecorative-Regular.ttf
│   └── Roboto-Regular.ttf
├── images/
│   ├── avatar/
│   ├── regions/
│   └── ui/
├── icons/
│   └── items/
├── audio/
├── models/       # Futuros modelos 3D
└── data/         # JSONs de lore, itens, classes
```

---

## 🔄 Fluxo de Dados (exemplo: completar hábito)

```
UI (HabitCard) 
  → tap "Concluído"
  → habits_provider.completeHabit(habitId)
    → CompleteHabitUseCase.execute()
      → HabitRepository.markComplete()   ← Drift DAO
      → AddXpUseCase.execute()
      → UpdateShadowUseCase.execute()
      → EventBus.emit(HabitCompletedEvent)
        → ShadowProvider ouve → atualiza estado
        → SanctuaryProvider ouve → atualiza home
```

---

## 📡 Eventos do Sistema (EventBus)

```dart
// Exemplos de eventos
HabitCompletedEvent(habitId, xpGained, shadowImpact)
HabitFailedEvent(habitId, penaltyAmount)
QuestUnlockedEvent(questId, questType)
ShadowStateChangedEvent(oldState, newState)
PlayerLeveledUpEvent(oldLevel, newLevel)
CaelumDayAdvancedEvent(dayNumber)
ShadowBossTriggeredEvent(bossType)
```

---

## 🎯 Ordem de Implementação (Roadmap)

### ✅ Fase 1 — Base Sólida (começar agora)
1. `core/constants/` → cores, tipografia, tema dark
2. `core/widgets/` → componentes base
3. `domain/entities/` + `domain/enums/`
4. `data/database/` → Drift setup + tabelas principais
5. `app/router.dart` → GoRouter com todas as rotas

### 🔄 Fase 2 — Fluxo Principal
6. Onboarding completo (5 telas narrativas)
7. Sanctuary (Home) funcional
8. Sistema de Hábitos completo
9. Sistema de Quests básico
10. Shadow System (estados e cálculos)

### 🔮 Fase 3 — Expansão
11. Classes + atributos
12. Regiões + Mapa
13. Inventário + Itens
14. Facções
15. Conquistas

### 🚀 Fase 4 — Conteúdo & Monetização
16. Loja
17. Biblioteca/Diário
18. NPCs
19. Eventos
20. Social (Guildas, Party)

---

## 🎨 Paleta Oficial (app_colors.dart preview)

```dart
class AppColors {
  // Base
  static const black       = Color(0xFF000000);
  static const surface     = Color(0xFF0D0D0D);
  static const surfaceAlt  = Color(0xFF141414);

  // Roxo — energia vital e sombra
  static const purple      = Color(0xFF8B3DFF);
  static const purpleLight = Color(0xFF9B5CF6);
  static const purpleGlow  = Color(0x338B3DFF); // com opacidade

  // Dourado — sagrado e ritualístico
  static const gold        = Color(0xFFC2A05A);
  static const goldDim     = Color(0xFF8A6E3A);

  // Status
  static const hp          = Color(0xFFB33030); // vermelho queimado
  static const mp          = Color(0xFF3070B3); // azul médio
  static const xp          = Color(0xFF7C3AED); // roxo

  // Sombra (estados)
  static const shadowStable   = Color(0xFF6B4FA0);
  static const shadowChaotic  = Color(0xFF8B2020);
  static const shadowAscending = Color(0xFF4FA06B);
  static const shadowVoid     = Color(0xFF1A1A2E);
}
```

---

## 📦 pubspec.yaml — Dependências finais

O arquivo já existente está **perfeito**. Adicionar apenas:

```yaml
# Adicionar em dependencies:
flutter_animate: ^4.5.0   # Animações declarativas elegantes
glassmorphism: ^2.0.0     # Efeito glass dark para cards
cached_network_image: ^3.3.1  # Imagens remotas (futuro)
```

---

## ⚙️ Setup do Codespaces

Ao abrir o repositório no GitHub Codespaces, rodar na ordem:

```bash
# 1. Instalar Flutter (se não veio pré-instalado)
flutter pub get

# 2. Gerar código Drift + JSON
dart run build_runner build --delete-conflicting-outputs

# 3. Rodar no Chrome (web preview)
flutter run -d web-server --web-port=8080

# 4. Para Android (emulador virtual no Codespaces):
flutter run -d android  # requer AVD configurado
```

> 💡 **Dica:** No Codespaces, use `flutter run -d chrome` para
> desenvolvimento visual rápido. Para testar no Android físico,
> use `flutter build apk --debug` e instale o APK manualmente.

---

*Arquitetura definida para o NoHeroes App v1.0*  
*Baseada na blueprint oficial — fiel ao universo de Caelum*
