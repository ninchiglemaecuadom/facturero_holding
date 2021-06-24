import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facturero',
      theme: ThemeData(

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}


class SplashScreen extends StatefulWidget {
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {


    Future.delayed(Duration(seconds: 2), () {
      print("abrir login");
      // Navigator.pushAndRemoveUntil(context,
      //     MaterialPageRoute(builder: (context) => Login(colours)),
      //     ModalRoute.withName("/Login"));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child:
                Image.network( "https://www.strunkmedia.com/wp-content/uploads/2018/05/bigstock-221516158.jpg",
                width: 150,
                height: 150,)
                // Image.asset(
                //   "assets/logo_vertical.png",
                //   width: 150,
                //   height: 150,
                // ),
              ),
            ],
          ),
          SizedBox(height: 250.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text("Powered by",
                      style:
                      TextStyle(fontSize: 16.0, color: Color(0xffb4274a1))),
                  Text("Hogarlife",
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffb4274a1))),
                ],
              ),
            ],
          ),

        ],
      ),
    );
  }
}

