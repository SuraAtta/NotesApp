import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model.dart';

class InputField extends StatelessWidget {
  const InputField({super.key, required this.myController});

  final TextEditingController myController;
  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: myController,
        onChanged:  (x){
          Note.typed.value = x;
        },
        style: const TextStyle(fontSize: 20),
        maxLines: 5,
        minLines: 1,
        textInputAction: TextInputAction.newline,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.black.withOpacity(0.07),
          hintText: 'Type note ...',
          prefixIcon: const Icon(Icons.note_add, color: Colors.grey),
          suffixIcon: TextButton(
            child: Obx(() {
              return Icon(
                Icons.send,
                color: Note.typed.isEmpty ? Colors.grey : Colors.blue,
              );
            }
            ),
            onPressed: () {
              Note.add(myController.text);
              myController.clear();
            },
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
        ),
    );
  }
}
