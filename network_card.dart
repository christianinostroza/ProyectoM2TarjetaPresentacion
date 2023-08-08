import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NetworkCard extends StatelessWidget {
  const NetworkCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 5,
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Net',
              style: TextStyle(
                fontFamily: 'NunitoSans',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 3),
            Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.github,
                  color: Colors.black,
                ),
                SizedBox(width: 5),
                Text(
                  'github.com/christianinostroza',
                  style: TextStyle(
                    fontFamily: 'NunitoSans',
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.linkedin,
                  color: Colors.black,
                ),
                SizedBox(width: 5),
                Text(
                  'linkedin.com/in/christian-inostroza-apablaza',
                  style: TextStyle(
                    fontFamily: 'NunitoSans',
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
