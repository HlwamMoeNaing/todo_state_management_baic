import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopDialog {
  Future<void> myDialog(String title, String subTitle, Function() fact,
      BuildContext context) async {
    showDialog(
        context: context,
        builder: (BuildContext ctx) {
          return AlertDialog(
            title: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 6),
                  child: Icon(
                    Icons.dangerous,
                    size: 20,
                  ),
                ),
                Text(title),
              ],
            ),
            content: Text(subTitle),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancel')),
              TextButton(
                  onPressed: () {
                    fact();
                    Navigator.pop(context);
                  },
                  child: const Text('Ok')),
            ],
          );
        });
  }
}
