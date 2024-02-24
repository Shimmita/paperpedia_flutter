import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        title: const Text("Signin"),
        backgroundColor: Colors.deepPurple,
        titleTextStyle: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        centerTitle: true,
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
                prefixIcon: Icon(Icons.mail),
                labelText: 'email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
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
              height: 10,
            ),
            OutlinedButton(
                onPressed: () {
                  print('begin signin');
                },
                child: const Text(
                  "signin",
                  style: TextStyle(fontSize: 15),
                )),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
                onPressed: () {},
                child: const Text(
                  "forgot password",
                  style: TextStyle(fontSize: 15),
                )),
          ],
        ),
      ),
    );
  }
}
