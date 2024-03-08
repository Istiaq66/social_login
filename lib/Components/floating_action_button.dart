import 'package:flutter/material.dart';

class MyFloatingActionButton extends StatelessWidget {
  final void Function()? onPressed;

  const MyFloatingActionButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: Colors.blue.shade300,
      child: const Icon(Icons.add,)
    );
  }
}
