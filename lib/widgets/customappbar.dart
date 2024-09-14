import 'package:flutter/material.dart';
import 'package:notes_app/widgets/customsearch_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.text, required this.icon});
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 28),
        ),
        const Spacer(),
        CustomSearchIcons(
          icon: icon,
        )
      ],
    );
  }
}
