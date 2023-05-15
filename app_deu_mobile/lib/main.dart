import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int navIndex = 0;

  void changeNavIndex(int index) {
    setState(() {
      navIndex = index;
    });
  }

  List _items = [
    _buildMobileId(),
    Container(
      color: Colors.yellow,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.blue,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/bar_logo.PNG'),
          ),
          title: Text('모바일ID'),
          actions: [
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                // Do something
              },
            ),
          ],
        ),
        body: _items[navIndex],
        bottomNavigationBar: BottomNavigationBar(
          //BottomNavigationBar : 화면 이동 네비게이션
          type: BottomNavigationBarType.fixed,
          currentIndex: navIndex,
          onTap: changeNavIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.phone), label: "모바일ID"),
            BottomNavigationBarItem(
                icon: Icon(Icons.food_bank), label: "D-Food"),
            BottomNavigationBarItem(
                icon: Icon(Icons.taxi_alert), label: "D-Pay"),
            BottomNavigationBarItem(icon: Icon(Icons.chair), label: "좌석배정"),
            BottomNavigationBarItem(
                icon: Icon(Icons.taxi_alert), label: "환경설정"),
          ],
        ),
      ),
    );
  }
}

Column _buildMobileId() {
  return Column(
    children: [
      // 첫번째 박스 - 첫번째 행
      Column(
        children: [
          Row(
            children: [
              Container(
                width: 250,
                height: 230,
                // color: Colors.black,
                child: Image.asset("assets/images/h1.PNG"),
              ),
              Container(
                width: 250,
                height: 230,
                // color: Colors.red,
                child: Image.asset("assets/images/qr.PNG"),
              )
            ],
          ),
        ],
      ),

      //첫번째 박스 - 두번째 행
      Column(
        children: [
          Row(
            children: [
              Container(
                width: 250,
                height: 100,
                // color: Colors.red,
                child: Text('s7777777001'),
                alignment: Alignment.center,
              ),
              Container(
                width: 250,
                height: 100,
                // color: Colors.black,
                child: Text('ZL\n특별열람증'),
                alignment: Alignment.center,
              )
            ],
          ),
        ],
      ),
      // 공백
      Column(
        children: [
          Container(
            width: 500,
            height: 80,
            color: Colors.white,
          )
        ],
      ),

      // 두번째 박스 - 첫번째 행
      Column(
        children: [
          Row(
            children: [
              Container(
                width: 166,
                height: 150,
                // color: Colors.green,
                child: Image.asset("assets/images/m1.PNG"),
              ),
              Container(
                width: 166,
                height: 150,
                // color: Colors.blue,
                child: Image.asset("assets/images/m2.PNG"),
              ),
              Container(
                width: 166,
                height: 150,
                // color: Colors.yellow,
                child: Image.asset("assets/images/m3.PNG"),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 166,
                height: 150,
                // color: Colors.yellow,
                child: Image.asset("assets/images/m4.PNG"),
              ),
              Container(
                width: 166,
                height: 150,
                // color: Colors.green,
                child: Image.asset("assets/images/m5.PNG"),
              ),
              Container(
                width: 166,
                height: 150,
                // color: Colors.blue,
                child: Image.asset("assets/images/m6.PNG"),
              ),
            ],
          )
        ],
      )
    ],
  );
}
