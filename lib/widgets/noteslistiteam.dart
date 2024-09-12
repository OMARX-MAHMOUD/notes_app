import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_noteiteam.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 4),
            child: NotesIteam(),
          );
        });
  }
}
