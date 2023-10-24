import 'package:flutter/material.dart';
import '../components/challenge_card.dart';

List<Challenge> challenges = [
  Challenge(
    title: 'Madrid Treasure Hunt',
    description: 'Find the hidden treasure in Madrid',
    imageName: 'MTH.png',
    timeLeft: Duration(days: 3, hours: 10, minutes: 30),
    prize: 'Secret',
  ),
   Challenge(
    title: 'Snake Game',
    description: 'Be the longest snake',
    imageName: 'SG.png',
    timeLeft: Duration(days: 3, hours: 10, minutes: 30),
    prize: 'Secret',
  ),
  Challenge(
    title: 'Brick Breaker',
    description: 'Break the most bricks',
    imageName: 'BB.png',
    timeLeft: Duration(days: 3, hours: 10, minutes: 30),
    prize: 'Secret',
  ),
  Challenge(
    title: 'T-Rex Survival',
    description: 'Survive the extinction ',
    imageName: 'TRS.png',
    timeLeft: Duration(days: 3, hours: 10, minutes: 30),
    prize: 'Secret',
  ),
  // Add other challenges here...
];

class ChallengeFeedScreen extends StatelessWidget {
  static const routeName = '/challenge-feed';  // Define a route name for this screen
  
  @override
  Widget build(BuildContext context) {
    // Use the ChallengeCard component here to show your list of challenges
    return Scaffold(
      appBar: AppBar(
        title: Text('Challenges'),
      ),
      body: ListView.builder(
        itemCount: challenges.length,  // 'challenges' is your list of Challenge objects
        itemBuilder: (context, index) {
          return ChallengeCard(challenge: challenges[index]);
        },
      ),
    );
  }
}
