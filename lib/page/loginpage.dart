import 'package:first_app/RouteConstant.dart';
import 'package:first_app/widget/bottomnavbar.dart';
import 'package:flutter/material.dart';
import 'package:first_app/page/register.dart';
import 'package:go_router/go_router.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff646FD4),
        body: Container(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.center,
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
                      )
                    ],
                  ),
                ), //text Login
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
                      TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintText: "johndoe@gmail.com",
                            hintStyle: TextStyle(
                              fontSize: 16,
                              color: Colors.white.withOpacity(0.5),
                              // fontFamily: 'monserrat'
                              fontWeight: FontWeight.w500,
                            ),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.25),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(8)),
                          ))
                    ],
                  ),
                ), //email
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
                      TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: TextStyle(
                              fontSize: 16,
                              color: Colors.white.withOpacity(0.5),
                              // fontFamily: 'monserrat'
                              fontWeight: FontWeight.w500,
                            ),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.25),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(8)),
                          ))
                    ],
                  ),
                ), //password
                Container(
                    margin: const EdgeInsets.only(left: 50, top: 50, right: 50),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  padding:
                                      EdgeInsets.only(top: 15.0, bottom: 15.0)),
                              onPressed: () {
                                context.go('/rapor');
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (context) => bottomnavbar()),
                                // );
                              },
                              child: Text(
                                'Log in',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff646FD4),
                                    backgroundColor: Colors.white),
                              ))
                        ])), //login Button
                Container(
                    margin: const EdgeInsets.only(left: 50, top: 10, right: 50),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Padding(
                          //   padding: EdgeInsets.only(top: 0),
                          //   child: Text(
                          //     'Belum Memiliki Akun?',
                          //     style: TextStyle(color: Colors.white),
                          //   ),
                          // ),
                          Text("Belum Memiliki Akun?"),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => register()),
                                );
                              },
                              style: TextButton.styleFrom(
                                  padding: EdgeInsets.only(
                                      top: 0, bottom: 0, left: 3, right: 0)),
                              child: Text('Daftar Sekarang'))
                        ]))
              ]), //main
        ));
  }
}
