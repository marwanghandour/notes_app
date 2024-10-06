import 'package:flutter/material.dart';

class EditNote extends StatelessWidget {
   EditNote({super.key});
    final TextEditingController titleController = TextEditingController();
    final TextEditingController contentController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.check, size: 30, color: Colors.white)
),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
             TextField(
                  textCapitalization: TextCapitalization.words,
                  style: const TextStyle(color: Colors.white),
                  controller: titleController,
                  decoration: const InputDecoration(
                    fillColor: Color.fromARGB(255, 173, 173, 173),
                    filled: true,
                    hintText: 'Title',
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(height: 20,),
            
                TextField(
                  maxLines: 5,
                  
                  textCapitalization: TextCapitalization.sentences,
                  style: const TextStyle(color: Colors.white),
                  controller: contentController,
                  decoration: const InputDecoration(
                    fillColor: Color.fromARGB(255, 173, 173, 173),
                    filled: true,
                    hintText: 'Content',
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}