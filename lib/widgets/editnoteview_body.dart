import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_textfield.dart';
import 'package:notes_app/widgets/customappbar.dart';

class EditnoteviewBody extends StatelessWidget {
  const EditnoteviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          CustomAppBar(text: 'Edite Note ', icon: Icons.check),
          SizedBox(
            height: 10,
          ),
          CustomTextfield(hint: 'Title'),
          SizedBox(
            height: 16,
          ),
          CustomTextfield(
            hint: 'Content',
            maxline: 5,
          )
        ],
      ),
    );
  }
}
