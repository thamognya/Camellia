import 'package:flutter/material.dart';

class stLoginPage extends StatefulWidget {
  const stLoginPage({Key? key}) : super(key: key);

  @override
  State<stLoginPage> createState() => _stLoginPageState();
}

class _stLoginPageState extends State<stLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      body: SafeArea(
        child: Center(
          child: Column(children: [
            const SizedBox(height: 10),
            // Hello Again
            const Text(
              'Hello Again',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 20),
            // Missed You
            const Text(
              'Welcome Back, you\'ve been missed!',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 20),
            // Email
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(10)),
                child: const TextField(
                  //textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(20.0),
                    hintText: 'Email@Email',
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Password
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(10)),
                child: const TextField(
                  //textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(20.0),
                    hintText: 'Password',
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
