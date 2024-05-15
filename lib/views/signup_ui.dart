import 'package:flutter/material.dart';

class SignupUI extends StatefulWidget {
  const SignupUI({super.key});

  @override
  State<SignupUI> createState() => _SignupUIState();
}

class _SignupUIState extends State<SignupUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 27, right: 27),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: MediaQuery.of(context).size.height * 0.25,
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    " Get On Board!",
                    style: TextStyle(
                      fontFamily: 'Kanit',
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Create your profile to start your Journey.",
                    style: TextStyle(
                      fontFamily: 'Kanit',
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    hintText: 'Full Name',
                    prefixIcon: Icon(Icons.person_outline),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    hintText: 'E-mail',
                    prefixIcon: Icon(Icons.email_outlined),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    hintText: 'Phone No',
                    prefixIcon: Icon(Icons.tag_outlined),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6)),
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.fingerprint),
                    suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'LOGIN',
                        style:
                            TextStyle(fontFamily: 'Kanit', color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(
                          MediaQuery.of(context).size.width * 1,
                          MediaQuery.of(context).size.height * 0.07,
                        ),
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                            side: BorderSide(
                              color: Colors.black,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          child: Text(
                            'OR',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Kanit',
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.015,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                              child: Image.asset(
                                'assets/images/googlelogo.png',
                                height:
                                    MediaQuery.of(context).size.height * 0.025,
                              ),
                            ),
                            Text(
                              '  Sign-in with Google',
                              style: TextStyle(
                                  fontFamily: 'Kanit', color: Colors.black),
                            ),
                          ]),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(
                          MediaQuery.of(context).size.width * 1,
                          MediaQuery.of(context).size.height * 0.07,
                        ),
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                            side: BorderSide(color: Colors.black)),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an Account? ",
                      style: TextStyle(
                        fontFamily: 'Kanit',
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () {Navigator.pushNamed(context, '/login');
                        },
                        child: Text(
                          "LOGIN",
                          style:
                              TextStyle(color: Color.fromRGBO(36, 169, 247, 1)),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              icon: Icon(Icons.arrow_back_ios),
              iconSize: 50,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
