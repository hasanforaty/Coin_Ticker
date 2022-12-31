import 'package:flutter/material.dart';

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
      theme: ThemeData.light(),
      home: const MainBody(),
    );
  }
}

class MainBody extends StatelessWidget {
  const MainBody({Key? key}) : super(key: key);
  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
            gradient:
                LinearGradient(colors: [Color(0xffc9ffbf), Color(0xffffafbd)])),
      ),
      title: const Text("Convert "),
      leading: CircleAvatar(
        backgroundColor: Colors.transparent,
        child: Image.asset(
          "images/bitcoin.png",
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(18),
        ),
      ),
    );
  }
}
