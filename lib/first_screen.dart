import 'package:flutter/material.dart';
import 'package:widgets_example/second_screen.dart';

class FirstScreen extends StatefulWidget {
  FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Anasayfa"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Soner",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Mirac",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
            ),
            TextButton(
              onPressed: () {
                debugPrint("buttona basildi");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondScreen()));
              },
              child: Text("Tamam"),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.amber,
                  padding: EdgeInsets.only(left: 40, right: 40)),
            ),
            Row(
              children: [
                Expanded(
                  child: Image.network(
                      "https://www.apple.com/newsroom/images/product/os/macos/standard/Apple-WWDC22-macOS-Ventura-Stage-Manager-220606_big.jpg.large.jpg"),
                ),
                TextButton(
                  onPressed: () {
                    debugPrint("buttona basildi");
                  },
                  child: Text("satın al"),
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.amber,
                      padding: EdgeInsets.only(left: 40, right: 40)),
                ),
                SizedBox(
                  width: 10,
                )
              ],
            ),
            SizedBox(
              height: 300,
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: ((context, index) {
                  return Image.network(
                      "https://www.apple.com/newsroom/images/product/iphone/standard/Apple-WWDC22-iOS16-3up-hero-220606_big.jpg.large.jpg");
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
