import 'package:flutter/material.dart';
import 'package:notesapp/models/notes_model.dart';

class NoteDetailPage extends StatelessWidget {
  final Note note;

  NoteDetailPage({required this.note});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text(note.title , style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          note.content,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
