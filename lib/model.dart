import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Note{
  final RxString title;
  final RxString note;
  final RxBool isDone;
  final Rx<Color> color;

  Note( String data , [bool? isDone])
    : isDone = (isDone??false).obs,
      title = "Note ${notes.length + 1}".obs,
      color = Colors.accents.elementAt(Random().nextInt(Colors.accents.length)).shade100.obs,
      note = data.obs;

  static RxList<Note> notes = <Note>[].obs;

  static RxString typed = ''.obs;

  static add(String note){
    Note data = Note(note);
    notes.add(data);
  }

  makeAsDone(){
    isDone.value = true;
  }


  static clear(){
    notes.clear();
  }

}