import 'package:flutter/material.dart';

// 프로그램 실행을 위해 main이 필요함.
void main(){
  // 플러터는 프레임워크다. 프레임워크는 제어의 역전(IOC)이다
  // runApp이 이 앱을 실행시켜줘 라고 함 (개발자가 프레임워크에 요청을 하는것)
  // 매개변수는 Widget
  // const는 컴파일 시점에 데이터가 고정된다. => 바뀌지 않는 화면일 경우에만 사용
  // 그래서.. => 데이터가 필요하지 않은 화면에는 무조건 const붙이기. (데이터를 주입하는 위젯에는 const 쓰면 안됨)
  runApp(const MyApp2());
}

// 위젯
// 화면을 그리는 단위
// 위젯 클래스를 사용하면 build 메서드가 실행된다.
// html의 태그와 같은 역할
// StatelessWidget은 고정된 화면을 만든다.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 안드로이드 스타일 앱 제작 위젯
    //
    return MaterialApp(
      // title : 앱의 제목
      title: "MyApp",
      // theme : 앱의 색상, 글꼴 /  ThemeData객체
      debugShowCheckedModeBanner: false, // debug~ : 디버그 모드 배너 (크롬화면에 오른족 위에 빨간색 배너) 없애기
      // routes 생략
      // locale : 앱의 언어를 사용하는 언어에 맞게 설정할 수 있다.
      // home : 앱 실행시 표시되는 위젯
      home: Scaffold(  // Scaffold : 바닥  :: 앱 구조 기반을 만드는 위젯 ( ex. appBar : 제목, 뒤로가기, 햄버거 버튼 등)
        appBar: AppBar(
          title: Text("MyApp"),
        ),
        // drawer : 서랍  >> 왼쪽에 햄버거 버튼이 생김 > 이안에 이제 ~~~~집어넣으면 됨.
        drawer: Drawer(),
        bottomNavigationBar: BottomNavigationBar( //BottomNavigationBar : 화면 이동 네비게이션
          items: const[
            BottomNavigationBarItem(
              label: "add",
              icon: Icon(Icons.add)
            ),
            BottomNavigationBarItem(
                label: "remove",
                icon: Icon(Icons.remove)
            ),

        ],), // BottomNavigationBar : 화면 이동 네비게이션
        floatingActionButton: FloatingActionButton(  //floatingActionButton : 화면 위에 떠있는 동그란 버튼
          onPressed: () {  },

        ),
        body: SafeArea(
            // 폰 기종마다 다른 노치, 알림바 등을 피해서 화면을 노출한다.
            //  >>Safe Area를 만들어주기때문에, Scaffold - SafeArea 조합은 왠만하면 쓰면 좋다.
            
            child: Center(
              child: Text("안녕"),
            )),
      ),
    );
  }
}



class MyApp2 extends StatefulWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  State<MyApp2> createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
  // State안의 변수는 관찰된다. 
  // 변수의 값이 바뀌면 화면이 바뀐다. 
  // int count = 0;
  int navIndex = 0 ;
  void changeNavIndex(int index){
    setState(() {
      navIndex = index;
    });
  }
  
  List _temp = [
    "안녕",
    "반가워",
  ];



  List _items = [
    Container(
      color: Colors.yellow,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.blue,
    )
  ];
  // void increaseCount() {
  //   // Stateful 변수를 변경할 때에는
  //   // 무조건 setState 함수를 사용한다.
  //    setState(() {
  //     count++;
  //    });
  // }
  //
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       bottomNavigationBar: BottomNavigationBar(
         currentIndex: navIndex,
         onTap: changeNavIndex,
         items: [
           BottomNavigationBarItem(
               icon: Icon(Icons.airplane_ticket), label: "노랑"),
           BottomNavigationBarItem(
               icon: Icon(Icons.train_rounded), label: "초록"),
           BottomNavigationBarItem(
               icon: Icon(Icons.taxi_alert), label: "파랑"),
         ],
       ),
        body: SafeArea(
            child: Center(
              child: _items[navIndex],),
              // child: Text("현재 카운트 : $count"),
            ),
        ),
      );
  }
}
