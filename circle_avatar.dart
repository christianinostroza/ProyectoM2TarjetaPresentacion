import 'package:flutter/material.dart';

class CircleAvatarWidget extends StatelessWidget {
  const CircleAvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.grey.shade300,
      radius: 70,
      child: const CircleAvatar(
        radius: 60,
        backgroundImage: AssetImage('assets/imagenes/avatar.png'),
      ),
    );
  }
}
