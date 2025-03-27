import 'package:flutter/material.dart';

class VisibilityIconButton extends StatelessWidget {
  final bool isVisible;
  final Function()? onTap;

  const VisibilityIconButton({super.key, required this.isVisible, this.onTap});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Icon(isVisible ? Icons.visibility_off : Icons.visibility),
      color: Colors.white,
    );
  }
}
