// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

//stl
import 'package:flutter/material.dart'; //UI google style

class HomeUI extends StatelessWidget {
  const HomeUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.yellow,
      backgroundColor: Color(0xfffEE400),
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/logo.png',
                  height: MediaQuery.of(context).size.height * 0.35,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Align(
                child: Text(
                  'Build Awesome Apps',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.035,
                    fontFamily: 'Kanit',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                "Let's put your creativity on the",
                style: TextStyle(
                  fontFamily: 'Kanit',
                ),
              ),
              Text(
                'DTI SAU 2024 ^_^',
                style: TextStyle(
                  fontFamily: 'Kanit',
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                          fontFamily: 'Kanit',
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(
                        MediaQuery.of(context).size.width * 0.35,
                        MediaQuery.of(context).size.height * 0.05,
                      ),
                      backgroundColor: Color(0xFFFEE400),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(
                            color: Colors.black,
                          )),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.03,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    child: Text(
                      'SIGNUP',
                      style: TextStyle(
                          fontFamily: 'Kanit',
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(
                        MediaQuery.of(context).size.width * 0.35,
                        MediaQuery.of(context).size.height * 0.05,
                      ),
                      backgroundColor: Color.fromARGB(255, 0, 0, 0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(color: Colors.black)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
