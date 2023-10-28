import 'package:flutter/material.dart';
import 'package:proj_one/faceThree.dart';

class faceTwo extends StatelessWidget {
  final String? image;
  final String? name;
  final String? title;
  final String? username;
  final int? phone;
  const faceTwo({
    super.key,
    this.image,
    this.name,
    this.title,
    this.username,
    this.phone,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Profile",
            style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold)),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 90,
            ),
            Container(
              width: 160,
              height: 160,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('$image'), fit: BoxFit.cover),
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(90))),
            ),
            Container(
              padding: EdgeInsets.only(top: 15, bottom: 2),
              child: Text(
                "$name",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 8),
              child: Text(
                "$title",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Color(0xEF1B098F)),
              ),
            ),
            Container(
              width: 60,
              height: 2,
              color: Color(0xEF1B098F),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              child: Text(
                "Username",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Container(
                child: Text(
              "$username",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            )),
            SizedBox(
              height: 20,
            ),

            // phone
            Container(
              child: Text(
                "Phone:",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              ),
            ),
            Container(
                child: Text(
              "$phone".toString(),
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            )),
            SizedBox(
              height: 40,
            ),

            // follow button
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xEF1B098F)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => faceThree()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Text(
                    "Follow Me",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
