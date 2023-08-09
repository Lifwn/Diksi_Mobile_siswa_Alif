import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:first_app/widget/bottomnavbar.dart';
import 'package:first_app/page/register.dart';
import 'package:shared_preferences/shared_preferences.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController identifierController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String? UsernameEmailValidation(String? value) {
    if (value == null || value.isEmpty) {
      return 'Field ini harus diisi';
    }
    return null;
  }

  String? passwordValidation(String? value) {
    if (value == null || value.isEmpty) {
      return 'Field ini harus diisi';
    }
    return null;
  }

  void loginUser() async {
    String identifier = identifierController.text;
    String password = passwordController.text;

    Map<String, dynamic> loginData = {
      "identifier": identifier,
      "password": password,
    };

    String jsonData = json.encode(loginData);

    try {
      final response = await http.post(
        Uri.parse('http://localhost:9000/login'),
        headers: {
          "Content-Type": "application/json",
        },
        body: jsonData,
      );
      if (response.statusCode == 200) {
        print("Login berhasil : ${response.body}");
        Map<String, dynamic> responseData = json.decode(response.body);

        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setBool("isLoggedIn", true);
        prefs.setString("username",
            responseData['username']); // Save the username to SharedPreferences

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => bottomnavbar()),
        );
      } else {
        print("Login gagal: ${response.body}");
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Login gagal')),
        );
      }
    } catch (error) {
      print("Error: $error");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Terjadi kesalahan')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff646FD4),
      body: SingleChildScrollView(
        child: Container(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 230,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 50),
                  child: Image.asset('assets/logo.png'),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 50, right: 20),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'Masuk ke dalam akun Diksi mu',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ), // Text "Login"
                Container(
                  margin: const EdgeInsets.only(left: 50, top: 20, right: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'E-mail/Username',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      TextFormField(
                        controller: identifierController,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: "johndoe@gmail.com",
                          hintStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.white.withOpacity(0.5),
                            fontWeight: FontWeight.w500,
                          ),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.25),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        validator: UsernameEmailValidation,
                      ),
                    ],
                  ),
                ), // Field Email/Username
                Container(
                  margin: const EdgeInsets.only(left: 50, top: 20, right: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Password',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      TextFormField(
                        controller: passwordController,
                        obscureText: true,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.white.withOpacity(0.5),
                            fontWeight: FontWeight.w500,
                          ),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.25),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        validator: passwordValidation,
                      ),
                    ],
                  ),
                ), // Field Password
                Container(
                  margin: const EdgeInsets.only(left: 50, top: 50, right: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: EdgeInsets.only(top: 15.0, bottom: 15.0)),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            loginUser();
                          }
                        },
                        child: Text(
                          'Log in',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff646FD4),
                              backgroundColor: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ), // Button "Log in"
                Container(
                  margin: const EdgeInsets.only(left: 50, top: 10, right: 50),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Belum Memiliki Akun?"),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Register()),
                          );
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.only(
                              top: 0, bottom: 0, left: 3, right: 0),
                        ),
                        child: Text('Daftar Sekarang'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
