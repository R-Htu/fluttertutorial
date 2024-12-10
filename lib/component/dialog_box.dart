import 'package:flutter/material.dart';
import 'package:tutorial_flutter/component/my_button.dart';

class DialogBox extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSaved;
  final VoidCallback onCancel;

  const DialogBox({
    super.key,
    required this.onCancel,
    required this.controller,
    required this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color.fromARGB(255, 69, 120, 71),
      content: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Add a new task',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(
                  text: 'Cancel',
                  onPressed: onCancel,
                ),
                SizedBox(width: 12),
                MyButton(
                  text: 'Save',
                  onPressed: onSaved,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
