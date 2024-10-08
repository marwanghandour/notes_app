import 'package:flutter/material.dart';
import 'package:notesapp/models/notes_model.dart';

class NoteDetailPage extends StatelessWidget {
  final Note note;

  const NoteDetailPage({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text(note.title , style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text('Content:'),
            Text(
              note.content,
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
