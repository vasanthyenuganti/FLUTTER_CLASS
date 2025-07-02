import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _key = GlobalKey<FormState>();
  final _emailCtrl = TextEditingController();
  final _passCtrl = TextEditingController();
  bool _passVisible = false;

  // String? vlidateEmail(val){

  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: AssetImage("assets/auth_bg.jpg"),
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Column(
            children: [
              Spacer(),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(16),
                    ),
                  ),
                  padding: EdgeInsets.all(16),
                  child: Form(
                    key: _key,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 16,
                      children: [
                        Text(
                          "Login",
                          style: TextStyle(
                            color: Color(0xff008738),
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        Text("You can grow the plants"),
                        SizedBox(height: 16),
                        TextFormField(
                          controller: _emailCtrl,
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Please enter the email";
                            } else if (!val.contains("@gmail.com")) {
                              return "please enter valid email";
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            labelText: "Email",
                            hintText: "battu@gmail.com",
                            border: OutlineInputBorder(),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(12)
                          ),
                          child: TextFormField(
                            controller: _passCtrl,
                            obscureText: !_passVisible,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Please enter the password";
                              } else if (!val.contains("@")) {
                                return "please enter strong password";
                              } else {
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                              // labelText: "Password",
                              // hintText: "",
                              // border: OutlineInputBorder(),
                              border: InputBorder.none,
                              suffixIcon: GestureDetector(
                                onTap: (){
                                  setState(() {
                                    _passVisible = !_passVisible;
                                  });
                                },
                                child: Icon(
                                  _passVisible ?
                                  Icons.visibility_off_outlined : 
                                  Icons.visibility_outlined)),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text("Forgot Password?"),
                        ),
                        GestureDetector(
                          onTap: () {
                            if (_key.currentState!.validate()) {
                              debugPrint(
                                "Email ${_emailCtrl.text} Pass ${_passCtrl.text}",
                              );
                            }
                          },
                          child: Container(
                            width: double.infinity,
                            height: 55,
                            decoration: BoxDecoration(
                              color: Color(0xff008738),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                "Log In",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have account? "),
                            Text(
                              "Create one!",
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
