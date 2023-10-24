import 'package:flutter/material.dart';

class Challenge {
  final String title;
  final String description;
  final String imageName;
  final Duration timeLeft;
  final String prize;

  Challenge({
    required this.title,
    required this.description,
    required this.imageName,
    required this.timeLeft,
    required this.prize,
  });
}

class ChallengeCard extends StatelessWidget {
  final Challenge challenge;

  ChallengeCard({required this.challenge});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset('assets/images/feed/${challenge.imageName}', fit: BoxFit.cover),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(12)),
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    challenge.title,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(challenge.description),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.timer),
                      SizedBox(width: 5),
                      Text('${challenge.timeLeft.inDays}d ${challenge.timeLeft.inHours % 24}h ${challenge.timeLeft.inMinutes % 60}m'),
                      Spacer(),
                      Text('Prize: ${challenge.prize}'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
