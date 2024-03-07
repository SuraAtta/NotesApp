import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:notes_project_me/view/list.dart';
import '../model.dart';
import 'InputField.dart';
import 'navigationBarButtons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nots App'),
        backgroundColor: Colors.white,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor:Colors.transparent,
            statusBarIconBrightness: Brightness.dark
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            InputField(myController: myController,),
            const NavigatorButtons(),
            const Expanded(child: CardList())
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Note.clear();
        },
        child: const Icon(Icons.delete),
      ),
    );
  }
}
