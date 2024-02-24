import 'package:flutter/material.dart';
import 'package:paper_pedia/authfile/signin.dart';
import 'package:paper_pedia/authfile/signup.dart';
import 'package:paper_pedia/screen/home.dart';

class SplashMain extends StatefulWidget {
  const SplashMain({super.key});

  @override
  State<SplashMain> createState() => _SplashMainState();
}

class _SplashMainState extends State<SplashMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(color: Colors.white),
              height: MediaQuery.of(context).size.height,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(80),
                  ),
                ),
                child:  const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                     /*  const SizedBox(height: 10,),
                      Image.asset(
                        'study.jpeg',
                        fit: BoxFit.cover,
                        
                      ),
                      const SizedBox(
                        height: 10,
                      ), */
                      Text(
                        'PaperPedia',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        '- University | Collage | Highschool | Primary',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "- KE's Best Platform for Past Paper  Exams",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "- Save  Time looking for Past Paper Exams",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "- Application  Developer Shimmita  Douglas",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "-Contact Phone Number +254 757450727",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(70),
                ),
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FilledButton(
                        onPressed: () {
                          //navigate to the login screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignIn(),
                            ),
                          );
                        },
                        child: const Text('signin')),
                    const SizedBox(
                      height: 5,
                    ),
                    OutlinedButton(
                        onPressed: () {
                          //navigate to the registration screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUp(),
                            ),
                          );
                        },
                        child: const Text('signup')),
                    const SizedBox(
                      height: 5,
                    ),
                    OutlinedButton(
                        onPressed: () {
                          //navigate to the main hompage
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeMainScreen(),
                            ),
                          );
                        },
                        child: const Text('proceed')),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
