import 'package:flutter/material.dart';
import 'package:submission/model/c_text.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyPageMobile();
  }
}

class MyPageWeb extends StatelessWidget {
  const MyPageWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green.withOpacity(0.5),
        body: Center(
          child: SizedBox(
            width: 300,
            height: 500,
            child: Card(
                child: Container(
              margin: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CText(text: 'Catatan', size: 18),
                  CText(text: 'Hallo'),
                  CText(
                      text:
                          'Aplikasi ini dirancang untuk project akhir/submission di Dicoding'),
                  CText(text: 'Selamat mencoba aplikasi ini')
                ],
              ),
            )),
          ),
        ));
  }
}

class MyPageMobile extends StatelessWidget {
  const MyPageMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green.withOpacity(0.5),
        body: Center(
          child: SizedBox(
            width: 300,
            height: 500,
            child: Card(
                child: Container(
              margin: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CText(text: 'Catatan', size: 18),
                  CText(text: 'Hallo'),
                  CText(
                      text:
                          'Aplikasi ini dirancang untuk project akhir/submission di Dicoding'),
                  CText(text: 'Selamat mencoba aplikasi ini')
                ],
              ),
            )),
          ),
        ));
  }
}
