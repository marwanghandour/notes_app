import 'package:flutter/material.dart';
import 'package:notesapp/models/notes_model.dart';
import 'package:notesapp/views/edit_note.dart';
import 'package:notesapp/views/note_detail.dart';

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
        return GestureDetector(
          onTap: () {
Navigator.push(context, MaterialPageRoute(builder: (context) => NoteDetailPage(note: note)));
          },
          child: Container(
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
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        note.title,
                        maxLines: 2,
                        style: const TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      Row(
                        children: <Widget>[
                         IconButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => EditNote()));
                           }, icon: const Icon(Icons.edit, color: Colors.black, size: 35,),),
          
                          IconButton(
                            onPressed: () => onDelete(index),
                            icon: const Icon(Icons.delete, size: 35, color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    note.content,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
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
          ),
        );
      },
    );
  }
}
