import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'list.dart';

class NavigatorButtons extends StatelessWidget {
  const NavigatorButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
            onPressed: (){
              CardList.controller.animateToPage(0, duration: const Duration(milliseconds: 300), curve: Curves.linear);
            },
            child: Obx(() {
              return Text('All Tasks', style: TextStyle(
                  color: CardList.currentPage == 0 ? Colors.blue : Colors.grey
              ),);
            }
            )
        ),
        TextButton(
            onPressed: (){
              CardList.controller.animateToPage(1, duration: const Duration(milliseconds: 300), curve: Curves.linear);
            },
            child: Obx(() {
              return Text('Done', style: TextStyle(
                  color: CardList.currentPage == 1 ? Colors.blue : Colors.grey
              ),);
            }
            )
        )
      ],
    );
  }
}
