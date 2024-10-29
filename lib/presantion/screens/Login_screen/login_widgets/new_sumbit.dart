import 'package:flutter/material.dart';

class newsumbit extends StatelessWidget {
  const newsumbit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextButton(
        onPressed: () {},
        child: Text(
          "or go SingUP",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
