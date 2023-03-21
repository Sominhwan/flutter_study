import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../main.dart';

class SeatingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            title: const Text("도서관 좌석배정",
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
        body: Container(
          child: WebView(
            initialUrl: "https://seat.deu.ac.kr/",
            javascriptMode: JavascriptMode.unrestricted,
            //javascriptMode: JavascriptMode.unrestricted,
          ),
        )
    );
  }

}
