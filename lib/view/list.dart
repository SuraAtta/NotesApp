import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../model.dart';
import 'card.dart';

class CardList extends StatelessWidget {
  const CardList({super.key});
  static PageController controller = PageController();
  static RxInt currentPage = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
       return PageView(
        controller: controller,
        onPageChanged: (x){
          currentPage.value = x;
        },
        children: [
          ListView(
            controller: ScrollController(),
            children: Note.notes.where((e) => e.isDone.value == false).map((e) => MyCard(note: e,)).toList(),
          ),
          ListView(
            controller: ScrollController(),
            children: Note.notes.where((e) => e.isDone.value == true).map((e) => MyCard(note: e,)).toList(),
          ),
        ],
      );
    }
    );
  }
}
