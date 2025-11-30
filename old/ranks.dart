import 'enums.dart';

class RankData {
  final Rank rank;
  final int rewardXp;
  final int rewardGold;
  final int penaltyXp;
  final int penaltyGold;

  const RankData({
    required this.rank,
    required this.rewardXp,
    required this.rewardGold,
    required this.penaltyXp,
    required this.penaltyGold,
  });
}

const rankValues = [
  RankData(rank: Rank.e, rewardXp: 10, rewardGold: 5, penaltyXp: -5, penaltyGold: -5),
  RankData(rank: Rank.d, rewardXp: 20, rewardGold: 10, penaltyXp: -10, penaltyGold: -10),
  RankData(rank: Rank.c, rewardXp: 40, rewardGold: 20, penaltyXp: -20, penaltyGold: -20),
  RankData(rank: Rank.b, rewardXp: 70, rewardGold: 35, penaltyXp: -40, penaltyGold: -40),
  RankData(rank: Rank.a, rewardXp: 120, rewardGold: 60, penaltyXp: -80, penaltyGold: -60),
  RankData(rank: Rank.s, rewardXp: 200, rewardGold: 100, penaltyXp: -150, penaltyGold: -100),
];
