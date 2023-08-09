import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:first_app/page/loginpage.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  String? usernameValidation(String? value) {
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

  String? emailValidation(String? value) {
    if (value == null || value.isEmpty) {
      return 'Field ini harus diisi';
    } else if (!value.contains('@')) {
      return 'Email harus mengandung karakter "@"';
    } else if (!value.endsWith('@gmail.com')) {
      return 'Email harus berakhir dengan "@gmail.com"';
    }
    return null;
  }

  String? phoneNumberValidation(String? value) {
    if (value == null || value.isEmpty) {
      return 'Field ini harus diisi';
    } else if (value.contains(RegExp(r'[^0-9]'))) {
      return 'Nomor telepon hanya boleh mengandung karakter numerik';
    }
    return null;
  }

  void registerUser() async {
    String username = usernameController.text;
    String password = passwordController.text;
    String email = emailController.text;
    String phoneNumber = phoneNumberController.text;

    Map<String, dynamic> registrationData = {
      "username": username,
      "password": password,
      "email": email,
      "phone": phoneNumber,
    };

    String jsonData = json.encode(registrationData);

    try {
      final response = await http.post(
        Uri.parse(
            'http://10.0.2.2:9000/register'), // Replace with your backend URL
        headers: {
          "Content-Type": "application/json",
        },
        body: jsonData,
      );

      if (response.statusCode == 201) {
        print("Registration successful");
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Registrasi berhasil')),
        );
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => loginpage()),
        );
      } else {
        print("Registration failed: ${response.body}");
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Registrasi gagal')),
        );
      }
    } catch (error) {
      print("Error: $error");
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
                SizedBox(height: 130),
                Container(
                  margin: const EdgeInsets.only(left: 50),
                  child: Image.asset('assets/logo.png'),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 50, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'Daftarkan akun Diksi mu',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                // Username
                Container(
                  margin: const EdgeInsets.only(left: 50, top: 20, right: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Username',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextFormField(
                        controller: usernameController,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: "Username",
                          hintStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.white.withOpacity(0.5),
                            fontWeight: FontWeight.w500,
                          ),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.25),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        validator: usernameValidation,
                      ),
                    ],
                  ),
                ),
                // Password
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
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextFormField(
                          controller: passwordController,
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
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          validator: passwordValidation),
                    ],
                  ),
                ),
                // Email
                Container(
                  margin: const EdgeInsets.only(left: 50, top: 20, right: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'E-mail',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextFormField(
                        controller: emailController,
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
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        validator: emailValidation,
                      ),
                    ],
                  ),
                ),
                // Phone Number
                Container(
                  margin: const EdgeInsets.only(left: 50, top: 20, right: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Phone Number',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextFormField(
                        controller: phoneNumberController,
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: "08xxxxxxxxxx",
                          hintStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.white.withOpacity(0.5),
                            fontWeight: FontWeight.w500,
                          ),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.25),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        validator: phoneNumberValidation,
                      ),
                    ],
                  ),
                ),
                // Registration Button
                Container(
                  margin: const EdgeInsets.only(left: 50, top: 30, right: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            registerUser();
                          }
                        },
                        child: Text(
                          'Register',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff646FD4),
                            backgroundColor: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Login Link
                Container(
                  margin: const EdgeInsets.only(left: 50, top: 10, right: 50),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Sudah Memiliki Akun?"),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => loginpage()),
                          );
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.only(
                              top: 0, bottom: 0, left: 3, right: 0),
                        ),
                        child: Text('Masuk Ke Akun'),
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
