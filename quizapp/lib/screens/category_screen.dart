import 'package:flutter/material.dart';
import 'package:quizapp/Widgets/category_container.dart';

import '../data.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Exit App"),
                content: Text("Do you want to exit the app?"),
                actions: [
                  TextButton(
                    child: Text("No"),
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                  ),
                  TextButton(
                    child: Text("Yes"),
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                  ),
                ],
              );
            },
          );
          return false;
        },
      child: Scaffold(
        body: ListView.builder(
            itemCount: datamodel.length,
            itemBuilder: (context, index) {
              return CategoryContainer(index: index);
            }),
      ),
    );
  }
}
