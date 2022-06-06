
import 'package:flutter/material.dart';
import 'package:submission/detail.dart';
import 'package:submission/home.dart';
import 'package:submission/kordinator.dart';
import 'package:submission/model/c_text.dart';
import 'package:submission/my_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.green,
        ),
        home: Main());
  }
}

class Main extends StatelessWidget {
const Main({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 600) {
          return const MainMobile();
        // } else if (constraints.maxWidth <= 1200) {
        //   return TourismPlaceGrid(gridCount: 4);
        } else {
          return const MainWeb();
        }
      },
    );
  }
}

class MainWeb extends StatelessWidget {
  
const MainWeb({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      // appBar: AppBar(title: Text("${MediaQuery.of(context).size.width}")),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset('images/onboard2.jpg')
                ],
              ),
              Positioned.fill(
                child: Container(
                  height: double.maxFinite,
                  width: double.maxFinite,
                  color: Colors.black.withOpacity(0.8),
                ),
              ),
              const Positioned(
                top: 90,
                left: 90,
                child: Text('Welcome to,',style: TextStyle(color: Colors.white, fontSize: 50)),
              ),
              Positioned(
                top: 170,
                left: 90,
                child: Column(
                  children: const [
                    Text('Plant App', style: TextStyle(fontSize: 50, color: Colors.white, fontWeight: FontWeight.bold)),
                  ],
                )
              ),
              const Positioned(
                top: 250,
                left: 90,
                child: Text(
                  'Grow your knowlegde about plant parts and plant needs',
                  style: TextStyle(color: Colors.grey, fontSize: 30)
                  ),
                ),
              Positioned(
                top: 350,
                left: 90,
                height: 70,
                width: 500,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Kordinator()));
                  },
                  style: ElevatedButton.styleFrom(
                    shape:  RoundedRectangleBorder(
                      borderRadius:  BorderRadius.circular(20),
                    )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Get started ', style: TextStyle(fontSize: 35, fontWeight: FontWeight.normal)),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MainMobile extends StatelessWidget {
  const MainMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset('images/onboard.jpg', height: 435),
            ],
          ),
          Container(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                children: const [
                  Text('Welcome to,',
                      style: TextStyle(color: Colors.grey, fontSize: 30)),
                ],
              )),
          Container(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                children: const [
                  Text('Plant App    ', style: TextStyle(fontSize: 30)),
                ],
              )),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              children: const [
                Text(
                  'Grow your knowlegde about plant parts and plant needs',
                  style: TextStyle(color: Colors.grey, fontSize: 16)
                )
              ],
            )
          ),
          const SizedBox(height: 35),
          Container(
            height: 50,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape:  RoundedRectangleBorder(
                  borderRadius:  BorderRadius.circular(10),
                )
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Kordinator()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Get started ', style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal)),
                  Icon(Icons.arrow_forward_ios)
                ],
              )
            ),
          ),
          const SizedBox(height: 40,)
        ],
      ),
    ));
  }
}
