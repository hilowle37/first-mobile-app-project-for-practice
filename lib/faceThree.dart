import 'package:flutter/material.dart';
import 'package:proj_one/faceOne.dart';

class faceThree extends StatelessWidget {
  const faceThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Thank You",
            style: TextStyle(fontSize: 50),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => faceOne()),
                    (route) => false);
              },
              child: Text(
                "Ok",
                style: TextStyle(fontSize: 20),
              ))
        ],
      )),
    );
  }
}
