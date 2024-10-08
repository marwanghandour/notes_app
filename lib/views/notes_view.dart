import 'package:flutter/material.dart';
import 'package:notesapp/models/notes_model.dart';
import 'package:notesapp/widgets/bottom_navigation.dart';
import 'package:notesapp/widgets/note_widget.dart';

class NotesView extends StatefulWidget {
  const NotesView({super.key});
  

  @override
  _NotesViewState createState() => _NotesViewState();
}
int _selectedIndex = 0;

class _NotesViewState extends State<NotesView> {

  void _onDestinationSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  final List<Note> notes = [
    Note(
      title: 'Start Adding Notes',
      content: 'Build Your Career With Notes... you can delete this note',
      date: 'May 21, 2:00',
    ),
    Note(
      title: 'Start Adding Notes',
      content: 'Build Your Career With Notes... you can delete this note',
      date: 'May 21, 2:00',
    ),
    Note(
      title: 'Start Adding Notes',
      content: 'Build Your Career With Notes... you can delete this note',
      date: 'May 21, 2:00',
    ),Note(
      title: 'Start Adding Notes',
      content: 'Build Your Career With Notes... you can delete this note',
      date: 'May 21, 2:00',
    ),Note(
      title: 'Start Adding Notes',
      content: 'Build Your Career With Notes... you can delete this note',
      date: 'May 21, 2:00',
    ),Note(
      title: 'Start Adding Notes',
      content: 'Build Your Career With Notes... you can delete this note',
      date: 'May 21, 2:00',
    ),Note(
      title: 'Start Adding Notes',
      content: 'Build Your Career With Notes... you can delete this note',
      date: 'May 21, 2:00',
    ),Note(
      title: 'Start Adding Notes',
      content: 'Build Your Career With Notes... you can delete this note',
      date: 'May 21, 2:00',
    ),Note(
      title: 'Start Adding Notes',
      content: 'Build Your Career With Notes... you can delete this note',
      date: 'May 21, 2:00',
    ),Note(
      title: 'Start Adding Notes',
      content: 'Build Your Career With Notes... you can delete this note',
      date: 'May 21, 2:00',
    ),
  ];

  void _deleteNote(int index) {
    setState(() {
      notes.removeAt(index);
    });
  }

  void addTodoDialog(BuildContext context) {
    final TextEditingController titleController = TextEditingController();
    final TextEditingController contentController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.grey.shade800,
          title: const Text('Add Note', style: TextStyle(color: Colors.white)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                textCapitalization: TextCapitalization.words,
                style: const TextStyle(color: Colors.white),
                controller: titleController,
                decoration: const InputDecoration(
                  hintText: 'Enter Title',
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
              TextField(
                textCapitalization: TextCapitalization.sentences,
                style: const TextStyle(color: Colors.white),
                controller: contentController,
                decoration: const InputDecoration(
                  hintText: 'Enter your Note',
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.white),
              ),
              onPressed: () {
                setState(() {
                  if (titleController.text.isNotEmpty && contentController.text.isNotEmpty) {
                    notes.add(Note(
                      title: titleController.text,
                      content: contentController.text,
                      date: DateTime.now().toString(),
                    ));
                  }
                  Navigator.of(context).pop();
                });
              },
              child: const Text('Add', style: TextStyle(color: Colors.black)),
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.white),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel', style: TextStyle(color: Colors.black)),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search, size: 30)),
        ],
      ),
      body: NoteWidget(
        notes: notes,
        onDelete: _deleteNote,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey.shade800,
        onPressed: () {
         addTodoDialog(context);
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: CustomNavigationBar(selectedIndex: _selectedIndex, onDestinationSelected: _onDestinationSelected),
    );
  }
}
