import 'package:flutter/material.dart';

class LoginUI extends StatefulWidget {
  const LoginUI({super.key});

  @override
  State<LoginUI> createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    "Welcome Back,",
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
                    "    Make it work, make it right, make it fast",
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
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'E-mail',
                    prefixIcon: Icon(Icons.fingerprint),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.fingerprint),
                    suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                InkWell(
                  onTap: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: IconButton(
              onPressed: () {},
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
