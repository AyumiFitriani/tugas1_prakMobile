import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 77, 57, 46),
            Color.fromARGB(255, 196, 165, 130),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: _page(),
      ),
    );
  }

  Widget _page() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _icon(),
          const SizedBox(height: 50),
          const Text(
            'Login Berhasil!',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromARGB(255, 255, 240, 216),
              fontSize: 25,
            ),
          ),
          const Text(
            '~ Selamat Datang 123210181 ~',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromARGB(255, 255, 240, 216),
              fontSize: 25,
            ),
          ),
        ],
      ),
    );
  }

  Widget _icon() {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              color: const Color.fromARGB(255, 255, 242, 167), width: 3),
          shape: BoxShape.circle),
      child: const Icon(
        Icons.person,
        color: Color.fromARGB(255, 255, 248, 186),
        size: 110,
        weight: 20,
      ),
    );
  }
}
