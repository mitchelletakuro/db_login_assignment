import 'package:db_login_assignment/database/db_helper.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var dbHelper;
  @override
  void initState() {
    super.initState();
    dbHelper = DbHelper();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Smartpenplus",
            style: TextStyle(
              color: Colors.white70,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 93, 104, 227),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          // color: Color(0xFFFFBF00),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/pen.jpg"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.4), BlendMode.hardLight),
            ),
          ),
          child: Column(
            children: [
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(0, 200, 0, 0),
                    child: Text(
                      "Bespoke writing at its peak",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 50,
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.055,
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 93, 104, 227)),
                  color: const Color.fromARGB(255, 93, 104, 227),
                  borderRadius: const BorderRadius.all(Radius.circular(35.0)),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/register");
                  },
                  child: const Text(
                    'Sign Up',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white70,
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.055,
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white70),
                  color: Colors.white70,
                  borderRadius: const BorderRadius.all(Radius.circular(35.0)),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/login");
                  },
                  child: const Text(
                    'Log In',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 93, 104, 227),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
