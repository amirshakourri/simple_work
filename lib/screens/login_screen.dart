import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(352),
          child: Stack(
            children: [
              AppBar(
                centerTitle: true,
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(30),
                  ),
                ),
                bottom: TabBar(
                  labelColor: Colors.black,
                  indicatorColor: Color(0xFFFA4A0C),
                  indicatorPadding: EdgeInsets.only(
                    left: 50,
                    right: 50,
                  ),
                  labelStyle: TextStyle(
                    fontSize: 18,
                    fontFamily: 'sf',
                    fontWeight: FontWeight.w600,
                  ),
                  tabs: [
                    Tab(
                      text: 'Login',
                    ),
                    Tab(
                      text: 'Sign-up',
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 100,
                left: 130,
                child: Container(
                  padding: EdgeInsets.only(top: 0),
                  width: 190,
                  height: 190,
                  child: Image.asset(
                    'assets/images/logo1.png',
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Color(0xffF2F2F2),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Container(
                color: Color(0xFFF2F2F2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 50,
                        right: 50,
                        top: 64,
                      ),
                      child: Container(
                        child: TextField(
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
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
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
            ),
            Container(
              color: Color(0xFFF2F2F2),
            )
          ],
        ),
      ),
    );
  }
}
