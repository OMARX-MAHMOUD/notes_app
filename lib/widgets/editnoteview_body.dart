import 'package:flutter/material.dart';

import 'package:notes_app/widgets/custom_textfield.dart';
import 'package:notes_app/widgets/customappbar.dart';

class EditnoteviewBody extends StatelessWidget {
  const EditnoteviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          const CustomAppBar(text: 'Edite Note ', icon: Icons.check),
          const SizedBox(
            height: 10,
          ),
          CustomTextfield(hint: 'Title'),
          const SizedBox(
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
