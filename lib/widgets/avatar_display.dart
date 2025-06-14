import 'package:flutter/material.dart';

final Map<String, IconData> avatarIcons = {
  'default_avatar': Icons.person,
  'book_avatar': Icons.menu_book,
  'globe_avatar': Icons.public,
  'star_avatar': Icons.star,
  'flag_avatar': Icons.flag,
  'school_avatar': Icons.school,
};

class AvatarDisplay extends StatelessWidget {
  final String avatarId;
  final double size;

  const AvatarDisplay({
    super.key,
    required this.avatarId,
    this.size = 100,
  });

  @override
  Widget build(BuildContext context) {
    // Pega o ícone do mapa, ou usa um padrão se não encontrar
    final iconData = avatarIcons[avatarId] ?? Icons.person;

    return CircleAvatar(
      radius: size / 2,
      backgroundColor: Colors.teal.shade100,
      child: Icon(
        iconData,
        size: size * 0.6,
        color: Colors.teal.shade800,
      ),
    );
  }
}
