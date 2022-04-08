import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var textstyle = const TextStyle(
    color: Colors.black45,
  );

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        backgroundColor: const Color.fromARGB(255, 93, 104, 227),
      ),
      body: SingleChildScrollView(
        child: Stack(children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            // color: Color(0xFFFFBF00),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage("assets/images/pen.jpg"),
                fit: BoxFit.contain,
                alignment: Alignment.topLeft,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.02), BlendMode.hardLight),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.08,
                  height: MediaQuery.of(context).size.height * 0.04,
                  margin: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(55.0)),
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios_rounded,
                      size: 15,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.58,
                  margin: const EdgeInsets.fromLTRB(0, 145, 0, 0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(75),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                        child: ListTile(
                          title: Text(
                            "Welcome Back",
                            style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                              color: Color.fromARGB(255, 93, 104, 227),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          subtitle: const Text(
                            "Login to your account",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black45,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.055,
                        margin: const EdgeInsets.fromLTRB(30, 30, 30, 15),
                        child: TextField(
                          controller: emailController,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Enter Username',
                            hintStyle: const TextStyle(
                              fontSize: 16,
                              color: Colors.black38,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                            filled: true,
                            contentPadding: const EdgeInsets.all(16),
                            fillColor: Colors.black12,
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.055,
                        margin: const EdgeInsets.fromLTRB(30, 15, 30, 15),
                        child: TextField(
                          controller: passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Enter Password',
                            hintStyle: const TextStyle(
                              fontSize: 16,
                              color: Colors.black38,
                            ),
                            suffixIcon: const Icon(
                              Icons.visibility_off,
                              color: Color.fromARGB(255, 93, 104, 227),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                            filled: true,
                            contentPadding: const EdgeInsets.all(16),
                            fillColor: Colors.black12,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        // height: MediaQuery.of(context).size.height*0.58,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              // color: Colors.blue,
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.radio_button_checked,
                                    color: Color.fromARGB(255, 93, 104, 227),
                                  ),
                                  Container(
                                    child: Text(
                                      "  Remember me",
                                      style: textstyle,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Text(emailController.text),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.055,
                        margin: const EdgeInsets.fromLTRB(0, 80, 0, 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(255, 93, 104, 227),
                          ),
                          color: const Color.fromARGB(255, 93, 104, 227),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(35.0)),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Log In',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white70,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        // height: MediaQuery.of(context).size.height*0.58,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Text(
                                "Don't have an account?",
                                style: textstyle,
                              ),
                            ),
                            const Text("  "),
                            Text(
                              "Sign Up",
                              style: const TextStyle(
                                color: Color.fromARGB(255, 93, 104, 227),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
