import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'profile00.dart';

class LoginSuccess extends StatelessWidget {
  const LoginSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(250, 50, 50, 250),
            foregroundColor: Colors.white,
            title: const Center(child: Text("LOGIN SUCCESS")),
          ),
          body: const MyWidget()),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  late SharedPreferences pref;
  late String username0 = "";
  late String namamu0 = "";

  Future<void> initial() async {
    pref = await SharedPreferences.getInstance();
    setState(() {
      username0 = pref.getString('usernamemu0').toString();
      namamu0 = pref.getString('namamu0').toString();
    });
  }

    @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initial();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(child: Text("WELCOME")),
          Text(username0),
          Text(namamu0),
        ],
      ),
    );
  }
}
