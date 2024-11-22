
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home:simpleloginscreen(),
      );
  }
}

class simpleloginscreen extends StatelessWidget {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  

  @override
 Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.white,
    body: Center(
     child: Padding(
      padding: const EdgeInsets.all(20.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text ("Selamat datang!",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
    ),
    const SizedBox(height: 30),
    TextField(
      controller: emailcontroller,
      decoration: InputDecoration(
        hintText: "Email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.grey),
        ),
      ),
      ),
      const SizedBox(height: 15),
      TextField(
        controller: passwordcontroller,
        obscureText: true,
        decoration: InputDecoration(
          hintText: "Password",
          border: OutlineInputBorder(borderRadius: BorderRadius. circular(8),
          borderSide: const BorderSide(color: Colors.grey),
          ),
        ),
      ),
      const SizedBox(height: 30),
      ElevatedButton(
        onPressed: () {
          //placeholder action
          if (emailcontroller.text.isNotEmpty &&
          passwordcontroller.text.isNotEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Login berhasil')),
              );
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('tolong isi semua')),
            );
          }
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            padding: const EdgeInsets.symmetric(
              horizontal: 80, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
          ),
          child: const Text(
            "Login",
            style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            ),
      ],
          ),
        ),
    ),
  );
 }
}