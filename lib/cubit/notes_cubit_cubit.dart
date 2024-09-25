import 'dart:nativewrappers/_internal/vm/lib/internal_patch.dart';

import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constans/constans.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_cubit_state.dart';

class NotesCubit extends Cubit<NotesCubitState> {
  NotesCubit() : super(NotesCubitInitial());

  ReadAllNotes() async {
    try {
      var notesBox = Hive.box<NoteModel>(kNoteBox);
      List<NoteModel> notes = notesBox.values.toList();
      emit(NotesCubitSuccess(notes: notes));
    } catch (e) {
      emit(NotesCubitFailure(errMessage: e.toString()));
    }
  }
}
