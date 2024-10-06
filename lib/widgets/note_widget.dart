import 'package:flutter/material.dart';
import 'package:notesapp/models/notes_model.dart';

class NoteWidget extends StatelessWidget {
  final List<Note> notes;
  final Function(int) onDelete;

  const NoteWidget({
    super.key,
    required this.notes,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: notes.length,
      itemBuilder: (context, index) {
        final note = notes[index];
        return Container(
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(15),
          ),
          margin: const EdgeInsets.all(16),
          height: 200,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      note.title,
                      style: const TextStyle(fontSize: 30, color: Colors.black),
                    ),
                    IconButton(
                      onPressed: () => onDelete(index),
                      icon: const Icon(Icons.delete, size: 35, color: Colors.black),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  note.content,
                  style: const TextStyle(fontSize: 15, color: Colors.black),
                ),
                 Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    note.date,
                    style: const TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        );
      },
    );
  }
}
