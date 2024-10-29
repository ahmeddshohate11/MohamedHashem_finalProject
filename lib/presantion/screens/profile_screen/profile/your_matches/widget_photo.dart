import 'package:flutter/material.dart';

class upermathces extends StatelessWidget {
  const upermathces({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Image.asset(
            "assets/images/Rectangle 52.png",
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          top: 0,
          left: 5,
          right: 5,
          child: Image.asset(
            "assets/images/image1.png",
            fit: BoxFit.fill,
            // height: 100,
            // width: 120,
          ),
        ),
        Positioned(
          left: 20,
          top: 50,
          right: 70,
          child: Stack(
            children: [
              Image.asset(
                "assets/images/pngegg.png",
                fit: BoxFit.fill,
                height: MediaQuery.of(context).size.height / 4.2,
              ),
              Positioned(
                top: 100,
                left: 60,
                child: Image.asset(
                  "assets/images/person.png",
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
