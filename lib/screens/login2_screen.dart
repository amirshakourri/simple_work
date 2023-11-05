import 'package:flutter/material.dart';

class LoginPage2 extends StatefulWidget {
  const LoginPage2({super.key});

  @override
  State<LoginPage2> createState() => _LoginPage2State();
}

class _LoginPage2State extends State<LoginPage2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFFA4A0C),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  height: 320,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/logo.png'),
                    ],
                  ),
                ),
                Container(
                  child: TabBar(
                    indicatorColor: Color(0xFFFA4A0C),
                    indicatorPadding: EdgeInsets.only(left: 30, right: 30),
                    tabs: [
                      Tab(
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Sign-Up',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    child: TabBarView(
                      children: [
                        Container(
                            child: Container(
                              color: Color(0xFFF2F2F2),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 50,
                                      right: 50,
                                      top: 62,
                                    ),
                                    child: Container(
                                      child: TextField(
                                        onTapOutside: (event) {
                                          FocusManager.instance.primaryFocus
                                              ?.unfocus();
                                        },
                                        decoration: InputDecoration(
                                          labelText: 'Email address',
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 50,
                                      right: 50,
                                      top: 48,
                                    ),
                                    child: Container(
                                      child: TextField(
                                        obscuringCharacter: '*',
                                        obscureText: true,
                                        decoration: InputDecoration(
                                          labelText: 'Password',
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 50.0,
                                      top: 34,
                                      //bottom: 135,
                                    ),
                                    child: Text(
                                      'Forget Password?',
                                      style: TextStyle(
                                        color: Color(0xFFFA4A0C),
                                        fontSize: 15,
                                        fontFamily: 'sf',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 70,
                                  ),
                                  Center(
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xFFFA4A0C),
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                      ),
                                      child: Container(
                                        width: 314,
                                        height: 70,
                                        child: Center(
                                          child: Text(
                                            'Login',
                                            style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            color: Colors.red),
                        Container(child: Text('Hello'), color: Colors.blue),
                      ],
                    ),
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
