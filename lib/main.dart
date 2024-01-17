import 'package:flutter/material.dart';
import 'second_page.dart';
import 'fourth_page.dart';
import 'fifth_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Identity App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  //String buttonName = 'Click';
  int currentIndex = 0;
  bool _isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Center(
          child: Text('Identity App'),
        ),
      ),
      body: Center(
        child: currentIndex == 0
            ? Container(
                //width: double.infinity,
                height: double.infinity,
                color: Colors.orange.shade500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Welcome To My App',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.yellow.shade100),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const SecondPage(),
                          ),
                        );
                      },
                      child: const Text('Here It Is'),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.blue.shade100),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const FourthPage(),
                          ),
                        );
                      },
                      child: const Text('No.No.No'),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.black),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => FifthPage(),
                          ),
                        );
                      },
                      child: const Text(' Suiii '),
                    ),
                  ],
                ),
              )
            : GestureDetector(
                onTap: () {
                  setState(
                    () {
                      _isClicked = !_isClicked;
                    },
                  );
                },
                child: _isClicked
                    ? Image.asset('images/IMG_20240104_201613.jpg')
                    //const Text('Oops')
                    : Image.asset('images/IMG-20231011-WA0036.jpg'),
              ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green.shade300,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home,
              //color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Favs',
            icon: Icon(
              Icons.favorite,
              //color: Colors.yellow,
            ),
          ),
        ],
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
