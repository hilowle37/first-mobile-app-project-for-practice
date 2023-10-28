import 'package:flutter/material.dart';
import 'package:proj_one/faceTwo.dart';

class faceOne extends StatelessWidget {
  const faceOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ButtonStyle style = ElevatedButton.styleFrom(
        backgroundColor: Colors.blue, textStyle: TextStyle(fontSize: 25));
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bg2.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text(
              "Set Profile",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          body: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 160,
                ),
                Text(
                  "Welcome, ",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 100,
                ),
                ElevatedButton(
                    style: style,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => faceTwo(
                                    image: 'assets/hilowle.jpg',
                                    name: 'Abdukadir Hilowle',
                                    title: 'M App Dev',
                                    username: 'abdukadir302',
                                    phone: 252618995837,
                                  ))));
                    },
                    child: Text(
                      "My Profile",
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            ),
          )),
    );
  }
}
