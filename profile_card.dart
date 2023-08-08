import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 5,
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(
              'Christian Inostroza Apablaza',
              style: TextStyle(
                fontFamily: 'NunitoSans',
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  FontAwesomeIcons.phone,
                  color: Colors.black,
                  size: 10,
                ),
                SizedBox(width: 5),
                Text(
                  '+569 6624 7067',
                  style: TextStyle(
                    fontFamily: 'NunitoSans',
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  FontAwesomeIcons.solidEnvelope,
                  color: Colors.black,
                  size: 10,
                ),
                SizedBox(width: 5),
                Text(
                  'chinostroza@bootcampudd.cl',
                  style: TextStyle(
                    fontFamily: 'NunitoSans',
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Text(
              'Desarrollador Flutter',
              style: TextStyle(
                fontFamily: 'NunitoSans',
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
