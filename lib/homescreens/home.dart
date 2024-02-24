import 'dart:io';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 0, mainAxisSpacing: 0),
          children: [
            Card(
              child: MaterialButton(
                onPressed: () {},
                child: const Center(
                    child: Text(
                  "University Exams",
                  style: TextStyle(fontWeight: FontWeight.w300),
                )),
              ),
            ),
            Card(
              child: MaterialButton(
                  onPressed: () {},
                  child: const Text("Collage Exams",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                      ))),
            ),
            Card(
              child: MaterialButton(
                  onPressed: () {},
                  child: const Text("Polytechnic Exams",
                      style: TextStyle(fontWeight: FontWeight.w300))),
            ),
            Card(
              child: MaterialButton(
                  onPressed: () {},
                  child: const Text("Highschool Exams",
                      style: TextStyle(fontWeight: FontWeight.w300))),
            ),
            Card(
              child: MaterialButton(
                  onPressed: () {},
                  child: const Text("Primary Exams",
                      style: TextStyle(fontWeight: FontWeight.w300))),
            ),
            Card(
              child: MaterialButton(
                  onPressed: () {},
                  child: const Text("Nursery Exams",
                      style: TextStyle(fontWeight: FontWeight.w300))),
            ),
            Card(
              child: MaterialButton(
                  onPressed: () {},
                  child: const Text("K.C.S.E Results",
                      style: TextStyle(fontWeight: FontWeight.w300))),
            ),
            Card(
              child: MaterialButton(
                  onPressed: () {},
                  child: const Text("K.C.P.E Results",
                      style: TextStyle(fontWeight: FontWeight.w300))),
            ),
            Card(
              child: MaterialButton(
                  onPressed: () {
                    showContactUsDetailsAlert(context);
                  },
                  child: const Text("Contact Us",
                      style: TextStyle(fontWeight: FontWeight.w300))),
            ),
            Card(
              child: MaterialButton(
                  onPressed: () {
                    //exit the application
                    appExitAlert(context);
                  },
                  child: const Text("Exit",
                      style: TextStyle(fontWeight: FontWeight.w300))),
            ),
          ],
        ),
      ),
    );
  }

  showContactUsDetailsAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog.adaptive(
            icon: const Icon(Icons.contact_phone_rounded),
            title: const Text('Contact US'),
            content: const Text(
              'Developer Name:\nShimita Douglas\n\n Phone Number:\n+254757450727\n\n Email:\nshimitadouglas@gmail.com',
              style: TextStyle(
                  fontWeight: FontWeight.w400, fontStyle: FontStyle.italic),
            ),
            actions: [
              OutlinedButton(onPressed: () {}, child: const Text('call')),
              OutlinedButton(onPressed: () {}, child: const Text('email')),
            ],
          );
        });
  }

  appExitAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog.adaptive(
            content: const Text(
              'apllication will be exited',
              style: TextStyle(
                  fontWeight: FontWeight.w400, fontStyle: FontStyle.italic),
            ),
            actions: [
              OutlinedButton(
                  onPressed: () {
                    exit(0);
                  },
                  child: const Text('ok')),
              OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('no')),
            ],
          );
        });
  }
}
