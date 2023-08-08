import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SkillsCard extends StatelessWidget {
  const SkillsCard({super.key});

  Widget buildSkillRow(String skillText,
      {int starCount = 0, bool showStarIcon = true}) {
    return Row(
      children: [
        Row(
          children: List.generate(
            5,
            (index) => FaIcon(
              index < starCount
                  ? FontAwesomeIcons.solidStar
                  : FontAwesomeIcons.star,
              color: index < starCount ? Colors.amber : Colors.grey,
              size: 16,
            ),
          ),
        ),
        SizedBox(width: showStarIcon ? 5 : 0),
        Text(
          skillText,
          style: const TextStyle(
            fontFamily: 'NunitoSans',
            fontSize: 14,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Skills',
              style: TextStyle(
                fontFamily: 'NunitoSans',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 3),
            buildSkillRow('- UI/UX Design (Adobe XD, Sketch)',
                showStarIcon: true, starCount: 4),
            const SizedBox(height: 10),
            buildSkillRow('- Version Control (Git)',
                showStarIcon: true, starCount: 4),
            const SizedBox(height: 10),
            buildSkillRow('- Languages (Python, JavaScript, Dart, C#)',
                showStarIcon: true, starCount: 4),
            const SizedBox(height: 10),
            buildSkillRow(
                '- Soft Skills (Comunicación, Trabajo en Equipo)',
                showStarIcon: true,
                starCount: 4),
            const SizedBox(height: 10),
            buildSkillRow(
                '- Frontend Development (HTML, CSS, JavaScript, React)',
                showStarIcon: true,
                starCount: 4),
            const SizedBox(height: 10),
            buildSkillRow('- Backend Development (Node.js, Python)',
                showStarIcon: true, starCount: 5),
            const SizedBox(height: 10),
            buildSkillRow('- Mobile App Development (Flutter)',
                showStarIcon: true, starCount: 4),
          ],
        ),
      ),
    );
  }
}
