import 'package:flutter/material.dart';

import 'package:notes_app/widgets/customappbar.dart';
import 'package:notes_app/widgets/noteslistiteam.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          CustomAppBar(
            text: 'Notes',
            icon: Icons.search,
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(child: NoteListView())
        ],
      ),
    );
  }
}
