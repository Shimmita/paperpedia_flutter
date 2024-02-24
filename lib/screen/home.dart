import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paper_pedia/homescreens/home.dart';
import 'package:paper_pedia/screen/account.dart';
import 'package:paper_pedia/screen/favourite.dart';
import 'package:paper_pedia/screen/settings.dart';
import 'package:paper_pedia/screen/upload.dart';

class HomeMainScreen extends StatefulWidget {
  const HomeMainScreen({super.key});

  @override
  State<HomeMainScreen> createState() => _HomeMainScreenState();
}

class _HomeMainScreenState extends State<HomeMainScreen> {
  final bottomNavTabs = <Widget>[
    const HomeScreen(),
    const AccountScreen(),
    const SettingsScreen(),
    const FavouriteScreen(),
    const UploadScreen()
  ];
  int currentTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      floatingActionButton: FloatingActionButton.small(
        backgroundColor: Colors.white,
        onPressed: () {
          _showModalAlert(context);
        },
        child: const Icon(Icons.upload),
      ),

      bottomNavigationBar: CurvedNavigationBar(
        onTap: (int index) {
          setState(() {
            currentTabIndex = index;
          });
        },
        color: Colors.deepPurple, //bar cor
        backgroundColor: Colors.white,
        animationDuration: const Duration(milliseconds: 1000),
        animationCurve: Curves.easeOutExpo,
        items: const <Widget>[
          Icon(Icons.home, color: Colors.white),
          Icon(Icons.favorite, color: Colors.white),
          Icon(Icons.bar_chart_rounded, color: Colors.white),
          Icon(Icons.settings, color: Colors.white),
        ],
      ),
      body: Column(
        children: [
          //expand top row
          Expanded(
            flex: 5,
            child: SingleChildScrollView(
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Welcome Shimmian",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                                fontSize: 22),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: CircleAvatar(
                              child: Text(
                                'SD',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                          /* IconButton(
                              onPressed: () {
                                print("clicked icon");
                              },
                              icon: const Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 40,
                              )) */
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Recent downloads',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.grey),
                                  ),
                                  Text('10',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.grey))
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Recent uploads',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.grey),
                                  ),
                                  Text('10',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.grey))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CupertinoSearchTextField(
                        placeholder: 'search past paper',
                        itemSize: 25,
                        onSubmitted: (value) {
                          print(value);
                        },
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                        padding: const EdgeInsets.all(10),
                        backgroundColor: Colors.white,
                      ),
                      const SizedBox(
                        height: 5,
                      )
                    ],
                  )),
            ),
          ),
          //expand bottom column
          Expanded(
              flex: 10,
              child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(30.0))),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          const Center(
                            child: Text(
                              'Explore PaperPedia',
                              style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontStyle: FontStyle.italic),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Card(
                            child: ListTile(
                              onTap: () {
                                print('university');
                              },
                              title: const Text('University Papers'),
                              subtitle: const Text(
                                  'collection of degree level exams '),
                              leading: const Icon(
                                Icons.book_rounded,
                                size: 30,
                                color: Colors.deepPurple,
                              ),
                              trailing: const Icon(Icons.arrow_right_rounded),
                            ),
                          ),
                          Card(
                            child: ListTile(
                              onTap: () {
                                print('collage');
                              },
                              title: const Text('Collage Papers'),
                              subtitle: const Text(
                                  'collection of diploma level exams '),
                              leading: const Icon(
                                Icons.book_outlined,
                                size: 30,
                                color: Colors.deepPurple,
                              ),
                              trailing: const Icon(Icons.arrow_right_rounded),
                            ),
                          ),
                          Card(
                            child: ListTile(
                              onTap: () {
                                print('highschool');
                              },
                              title: const Text('HighSchool Papers'),
                              subtitle: const Text(
                                  'collection of K.C.S.E level exams '),
                              leading: const Icon(
                                Icons.bookmark_add_outlined,
                                size: 30,
                                color: Colors.deepPurple,
                              ),
                              trailing: const Icon(Icons.arrow_right_rounded),
                            ),
                          ),
                          Card(
                            child: ListTile(
                              onTap: () {
                                print('primary school');
                              },
                              title: const Text('PrimarySchool Papers'),
                              subtitle: const Text(
                                  'collection of K.C.P.E level exams '),
                              leading: const Icon(
                                Icons.bookmark_added_outlined,
                                size: 30,
                                color: Colors.deepPurple,
                              ),
                              trailing: const Icon(Icons.arrow_right_rounded),
                            ),
                          ),
                          Card(
                            child: ListTile(
                              onTap: () {
                                print('more options');
                              },
                              title: const Text('More Options'),
                              subtitle: const Text('discover new features'),
                              leading: const Icon(
                                Icons.diamond_outlined,
                                size: 30,
                                color: Colors.deepPurple,
                              ),
                              trailing: const Icon(Icons.arrow_right_rounded),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )))
        ],
      ),
      // bottomNavTabs[currentTabIndex],
    );
  }

  void _showModalAlert(BuildContext context) {
    showModalBottomSheet(
      showDragHandle: true,
      context: context,
      useSafeArea: true,
      builder: (context) {
        return Container(
          height: 200,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                const Center(
                    child: Text(
                  'File Upload',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.deepPurple),
                )),
                const SizedBox(
                  height: 10,
                ),
                Card(
                  child: ListTile(
                    leading: const Icon(
                      Icons.drive_folder_upload_rounded,
                      color: Colors.deepPurple,
                    ),
                    title: const Text('Upload Exam PDF'),
                    onTap: () {
                      print('upload pdf');
                    },
                    subtitle: const Text(
                        'upload an exam paper and share it with others (PDF ONLY)'),
                    trailing: const Icon(
                      Icons.arrow_right_rounded,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: const Icon(
                      Icons.image_rounded,
                      color: Colors.deepPurple,
                    ),
                    title: const Text('Upload Exam Photo'),
                    onTap: () {
                      print('upload photo');
                    },
                    subtitle: const Text(
                        'upload a photo of an exam paper captured by camera (JPG,JPEG,PNG)'),
                    trailing: const Icon(
                      Icons.arrow_right_rounded,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
