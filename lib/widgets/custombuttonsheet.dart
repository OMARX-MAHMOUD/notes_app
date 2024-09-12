import 'package:flutter/material.dart';

import 'package:notes_app/widgets/custom_textfield.dart';
import 'package:notes_app/widgets/custombutton.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            CustomTextfield(
              hint: 'Title',
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextfield(
              hint: 'Content',
              maxline: 5,
            ),
            SizedBox(
              height: 40,
            ),
            CustonButton(),
            SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}
