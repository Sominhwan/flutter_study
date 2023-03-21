import 'package:flutter/material.dart';
import '../main.dart';

class DFoodPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 242, 242, 50),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: AppBar(
            backgroundColor: Color.fromRGBO(36, 87, 189, 1.0),
            leading: Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Row(crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset('assets/images/deulogo.png',height: 45),
                ],
              ),
            ), // 이미지 경로 설정
            title: const Text("식당안내",
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  height: 2
              ),
            ),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: IconButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  icon: Icon(Icons.close,color: Colors.blueAccent,size: 45), // 검색 아이콘 생성
                  onPressed: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MyApp()));
                    });
                  },
                ),
              ),
            ],
            centerTitle: true,
            elevation: 0.0,
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                height: 80,
                width: 370,
                  child: Container(
                    decoration: BoxDecoration(border: Border.all(color: Colors.black54),color: Color.fromRGBO(226, 240, 217, 10)),
                    child: Row(
                        children: [
                          Image.asset('assets/images/student.png',height: 80),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Icon(Icons.restaurant_menu,size: 30),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text('학생 식당',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                          ),
                        ]
                    ),
                  ),
                ),
            ),
            Padding(
              padding: const EdgeInsets.all(0),
              child: SizedBox(
                height: 80,
                width: 370,
                child: Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.black54),color: Color.fromRGBO(222, 235, 247, 10)),
                  child: Row(
                      children: [
                        Image.asset('assets/images/dormitory.png',height: 80),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Icon(Icons.restaurant_menu,size: 30),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text('기숙사 식당',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                        ),
                      ]
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                height: 80,
                width: 370,
                child: Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.black54),color: Color.fromRGBO(218, 227, 243, 10)),
                  child: Row(
                      children: [
                        Image.asset('assets/images/staff.png',height: 80),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Icon(Icons.restaurant_menu,size: 30),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text('교직원 식당',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                        ),
                      ]
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0),
              child: SizedBox(
                height: 80,
                width: 370,
                child: Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.black54),color: Color.fromRGBO(255, 242, 204, 10)),
                  child: Row(
                      children: [
                        Image.asset('assets/images/goldenBell.png',height: 80),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Icon(Icons.restaurant_menu,size: 30),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text('골든벨',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                        ),
                      ]
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                height: 80,
                width: 370,
                child: Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.black54),color: Color.fromRGBO(253, 223, 215, 10)),
                  child: Row(
                      children: [
                        Image.asset('assets/images/turtles.png',height: 80),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Icon(Icons.restaurant_menu,size: 30),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text('터틀스',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                        ),
                      ]
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }

}
