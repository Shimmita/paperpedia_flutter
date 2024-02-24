import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Signup"),
        backgroundColor: Colors.deepPurple,
        titleTextStyle: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        centerTitle: true,
        elevation: 5,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /* const Center(
              child: Image(image: AssetImage('images/book.jpeg')),
            ),
            const SizedBox(
              height: 20,
            ), */
            TextFormField(
              onChanged: (e) {},
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_2_rounded),
                labelText: 'first name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),
            TextFormField(
              onChanged: (e) {},
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_2_rounded),
                labelText: 'last name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              onChanged: (e) {},
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.mail),
                labelText: 'email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              onChanged: (e) {},
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.call),
                labelText: 'phone number',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              onChanged: (e) {},
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.password),
                labelText: 'password',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              onChanged: (e) {},
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.password),
                labelText: 'confirm password',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            OutlinedButton(
                onPressed: () {
                  print('signup');
                },
                child: const Text(
                  "signup",
                  style: TextStyle(fontSize: 15),
                )),
          ],
        ),
      ),
    );
  }
}
