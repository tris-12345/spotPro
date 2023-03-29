import 'package:flutter/material.dart';
import 'screens/incoming_requests.dart';
import 'screens/login.dart';
import 'screens/Register.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Named routes',
      initialRoute: '/',
      routes: {
        '/login':(context) => Login(),
        '/register':(context) => Register(),
      },
      home: const Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  const Splash({super.key});
  @override
  _SplashState createState() => _SplashState();
}
class _SplashState extends State<Splash> {
  double opacity = 1.0;
  @override
  void initState(){
    super.initState();
    Future.delayed(const Duration(seconds : 1),() {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const NotificationPage()));
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(

        child:
        AnimatedOpacity(
          duration: const Duration(seconds: 3),
          opacity: opacity,
          child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo.webp',height: 130,),
            const SizedBox(height: 30,),
          ],
        ),
      ),
      )
    );
  }
}
class Home extends StatelessWidget{
  const Home({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('home'),
      ),
    );
  }
}