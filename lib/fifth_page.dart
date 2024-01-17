import 'package:flutter/material.dart';
//import '../main.dart';

class FifthPage extends StatefulWidget {
  const FifthPage({super.key});

  @override
  State<FifthPage> createState() => _FifthPageState();
}

class _FifthPageState extends State<FifthPage> {
  bool _isClicked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent.shade100,
      appBar: AppBar(
        title: const Text(
          'G.O.A.T',
        ),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: GestureDetector(
        onTap: () {
          setState(
            () {
              _isClicked = !_isClicked;
            },
          );
        },
        child: _isClicked
            ? Column(
                children: [
                  Image.asset('images/suii.jpg'),
                  Image.asset('images/suii5.jpg'),
                ],
              )
            : Column(
                children: [
                  Image.asset('images/sui1.jpg'),
                  Image.asset('images/sui2.jpg'),
                ],
              ),
      ),
    );
  }
}
