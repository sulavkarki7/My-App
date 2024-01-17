import 'package:flutter/material.dart';
//import '../main.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        backgroundColor: Colors.amber.shade100,
        body: Center(
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Ohh Welcome'),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: ((context) => const ThirdPage()),
                        ),
                      );
                    },
                    child: const Text('Press Me'))
              ],
            ),
          ),
        ));
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade200,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20),
            CircleAvatar(
              radius: 120,
              backgroundImage: AssetImage(
                  'images/IMG-20231214-WA0139.jpg'), // Add your image path
            ),
            SizedBox(height: 20),
            Text(
              'Sulav Karki',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                'I am a 21-year-old student pursuing a Bachelor degree in Software Engineering at the School of Engineering, Pokhara University, Nepal. While I might not have an exact definition for coding, theres an undeniable passion that fuels my interest whenever I delve into it. Exploring the world of software engineering not only challenges me intellectually but also brings a sense of fulfillment and joy. I am on a journey of discovery, eager to learn and grow in the fascinating realm of coding.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('sulavkarki007@gmail.com'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('+977 9808415461'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Sulav Karki'),
              subtitle: Text('Trying To Be Developer'),
            ),
          ],
        ),
      ),
    );
  }
}
