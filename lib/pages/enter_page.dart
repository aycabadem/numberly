import 'package:flutter/material.dart';
import 'package:sayiciklar/pages/home_page.dart';
import 'dart:math';

class EnterPage extends StatefulWidget {
  const EnterPage({Key? key}) : super(key: key);

  @override
  State<EnterPage> createState() => _EnterPageState();
}

class _EnterPageState extends State<EnterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Numbly')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                    'Numbly is a game to find a randomly generated 4-digit number. Press play to start'),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                //setState(() {});
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => MyHomePage(
                          title: 'Numbly',
                          random: randomNumber(),
                        )));
              },
              child: Text('Play'),
            )
          ],
        ),
      ),
    );
  }

  List<int> randomNumber() {
    final List<int> randomNum = [];

    Random random = Random();

    for (int i = 0; i < 4; i++) {
      int random1 = random.nextInt(10);
      if (randomNum.contains(random1) || random1 == 0) {
        return randomNumber();
      }
      randomNum.add(random1);
    }

    debugPrint(randomNum.toString());

    return randomNum;
  }
}