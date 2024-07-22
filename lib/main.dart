import 'package:demo2_app/second.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(mi_app());
}

class mi_app extends StatefulWidget {
  const mi_app({super.key});

  @override
  State<mi_app> createState() => _mi_appState();
}

class _mi_appState extends State<mi_app> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Column(
            children: [
              Row(
                children: [
                  Title(
                    color: Colors.white,
                    child: Text(
                      "Whatsapp",
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                        // Handle search logic here
                      },
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                        icon: Icon(Icons.search, color: Colors.grey),
                      ),
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.qr_code_scanner, color: Colors.black),
                  SizedBox(width: 20),
                  Icon(Icons.camera_alt_outlined, color: Colors.black),
                  SizedBox(width: 20),
                  Icon(Icons.more_vert, color: Colors.black),
                ],
              ),
            ],
          ),
          backgroundColor: Colors.white,
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
        floatingActionButton: Container(
          width: 90,
          height: 250,
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Column(
                children: [
                  FloatingActionButton.small(
                    onPressed: ArgumentError.notNull,
                    child: Icon(
                      Icons.radio_button_unchecked,
                      color: Colors.purpleAccent,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  FloatingActionButton.large(
                    onPressed: ArgumentError.notNull,
                    backgroundColor: Colors.green,
                    child: Icon(
                      Icons.add_comment_rounded,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
        body: csk(),
      ),
    );
  }
}

class csk extends StatefulWidget {
  const csk({super.key});

  @override
  State<csk> createState() => _cskState();
}

class _cskState extends State<csk> {
  List<String> ab = <String>[
    'vimal',
    'abdul',
    'joel',
    'muhil',
    'amma',
    'GAMES AND MOVIES',
    'chandru fr',
    'subakar',
    'harish kanish',
    'giri',
    'billu fr',
    'prasana',
    'SJC/22-25/BCA-B/S1'
  ];
  List<String> ba = <String>[
    'dai task mudichitiya da',
    'enna da pandra',
    'naa vittila erukkan',
    'dai movie download pannitaya da',
    'enga pa vandutu erukka',
    'GTA 5 download pannitiya da work aagutha',
    'dai python course start panniya da',
    'dai na busy ya erukan nalaiki ff aadalam',
    'anna ff id send pannu',
    'da innaiki ya collage varala',
    'dai tamil pdf send pannu da',
    'dai enna group la add pannu',
    'student tomorrow collage  holiday'
  ];
  // List<String> ca = <String>[
  //   'hi',
  //   'hi',
  //   'hi',
  //   'hi',
  //   'hi',
  //   'hi',
  //   'hi',
  //   'hi',
  //   'hi',
  //   'hi',
  //   'hi',
  //   'hi',
  // ];
  List<String> a1 = <String>[
    'assets/dhoni.jpg',
    'assets/dhoni.jpg',
    'assets/dhoni.jpg',
    'assets/dhoni.jpg',
    'assets/dhoni.jpg',
    'assets/dhoni.jpg',
    'assets/dhoni.jpg',
    'assets/dhoni.jpg',
    'assets/dhoni.jpg',
    'assets/dhoni.jpg',
    'assets/dhoni.jpg',
    'assets/dhoni.jpg',
    'assets/dhoni.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: ab.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          color: Colors.white,
          height: 100,
          width: 300,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                  "${a1[index]}",
                ),
                radius: 35.0,
              ),
              SizedBox(width: 10),
              Center(
                child: Container(
                  height: 200,
                  width: 300,
                  child: Center(
                    child: Container(
                      height: 80,
                      width: 300,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Row(
                              children:
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Second()));
                                  },
                                  child: Expanded(
                                    child: Column(
                                      children: [
                                        Text(
                                          "${ab[index]}",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "${ba[index]}",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w100),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                SizedBox(
                                  width: 100,
                                ),
                                // Text("${ca[index]}"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return Divider(
          color: Colors.grey,
          height: 5,
          thickness: 1,
        );
      },
    );
  }
}
