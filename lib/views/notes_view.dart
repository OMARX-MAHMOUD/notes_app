import 'package:flutter/material.dart';
import 'package:notes_app/constans/constans.dart';
import 'package:notes_app/widgets/custombuttonsheet.dart';
import 'package:notes_app/widgets/notesview_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: KprimaryColor,
          foregroundColor: Colors.black,
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                context: context,
                builder: (context) {
                  return const AddNoteButtonSheet();
                });
          },
          child: const Icon(Icons.add),
        ),
        body: const NotesViewBody());
  }
}
