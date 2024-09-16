import 'package:flutter/material.dart';
import 'package:login_page/page/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/pict4.jpg'), fit: BoxFit.fill),
        // gradient: LinearGradient(
        //   begin: Alignment.topRight,
        //   end: Alignment.bottomLeft,
        //   colors: [
        //     Color.fromARGB(255, 109, 76, 28),
        //     Color.fromARGB(255, 233, 217, 146),
        //   ],
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
          const Text(
            '- WELCOME TO MEBOOK -',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromARGB(255, 255, 221, 182),
                fontSize: 30,
                fontWeight: FontWeight.bold,
                backgroundColor: Color.fromARGB(255, 65, 46, 33)),
          ),
          const SizedBox(height: 10),
          const Text(
            'Aplikasi koleski buku digital dengan berbagai kriteria.',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromARGB(255, 255, 225, 190),
                fontSize: 13,
                fontWeight: FontWeight.bold,
                backgroundColor: Color.fromARGB(255, 65, 46, 33)),
          ),
          const SizedBox(height: 50),
          _usernameField(usernameController),
          const SizedBox(height: 25),
          _passwordField(passwordController, isPassword: true),
          const SizedBox(height: 30),
          _loginButton()
        ],
      ),
    );
  }

  Widget _usernameField(TextEditingController controller) {
    var border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: const BorderSide(color: Colors.black));
    return TextField(
      style: const TextStyle(
        color: Colors.black,
      ),
      controller: usernameController,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.person),
        labelText: 'Username',
        labelStyle: const TextStyle(color: Colors.black),
        fillColor: const Color.fromARGB(255, 255, 195, 127),
        filled: true,
        enabledBorder: border,
        focusedBorder: border,
        constraints: const BoxConstraints.tightFor(width: 350),
      ),
    );
  }

  Widget _passwordField(TextEditingController controller,
      {isPassword = false}) {
    var border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(25),
      borderSide: const BorderSide(color: Colors.black),
    );
    return TextField(
      style: const TextStyle(
        color: Colors.black,
      ),
      controller: passwordController,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.lock),
        labelText: 'Password',
        labelStyle: const TextStyle(color: Colors.black),
        fillColor: const Color.fromARGB(255, 255, 195, 127),
        filled: true,
        enabledBorder: border,
        focusedBorder: border,
        constraints: const BoxConstraints.tightFor(width: 350),
      ),
      obscureText: isPassword,
    );
  }

  Widget _loginButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
        backgroundColor: const Color.fromARGB(255, 65, 46, 33),
        shadowColor: Colors.white,
      ),
      onPressed: () {
        _autentikasi();
      },
      child: const Text(
        'Sign In',
        style: TextStyle(
            color: Color.fromARGB(255, 255, 225, 190),
            fontSize: 17,
            fontWeight: FontWeight.bold),
      ),
    );
  }

  void _autentikasi() {
    String username = usernameController.text;
    String password = passwordController.text;
    if (username == '123210181' && password == '123210181') {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Login gagal!'),
        ),
      );
    }
  }
}
