import 'package:flutter/material.dart';
import 'package:login_ui_flutter/UI/customAnimation.dart';
import 'package:login_ui_flutter/UI/customUI.dart';
import 'package:login_ui_flutter/screen/loginScreen.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage>
    with TickerProviderStateMixin, CustomUI {
  AnimationController _animationController;
  Animation _animation;

  @override
  void initState() {
    super.initState();
    _animationController = new AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 1000,
      ),
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 150.0,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FadeIn(
                      child: Text(
                        "Register",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 55.0,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      controller: _animationController,
                      animation: Tween(begin: 0.0, end: 1.0).animate(
                        CurvedAnimation(
                          parent: _animationController,
                          curve: Interval((1 / 7) * 0, 1.0,
                              curve: Curves.fastOutSlowIn),
                        ),
                      ),
                    ),
                    FadeIn(
                      controller: _animationController,
                      animation: Tween(begin: 0.0, end: 1.0).animate(
                        CurvedAnimation(
                          parent: _animationController,
                          curve: Interval((1 / 7) * 1, 1.0,
                              curve: Curves.fastOutSlowIn),
                        ),
                      ),
                      child: Text(
                        "Please enter details to register.",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 25.0,
                        ),
                      ),
                    ),
                    FadeIn(
                      controller: _animationController,
                      animation: Tween(begin: 0.0, end: 1.0).animate(
                        CurvedAnimation(
                          parent: _animationController,
                          curve: Interval((1 / 7) * 2, 1.0,
                              curve: Curves.fastOutSlowIn),
                        ),
                      ),
                      child: customFields(
                          context: context,
                          controller: new TextEditingController(),
                          fieldName: "Name"),
                    ),
                    FadeIn(
                      controller: _animationController,
                      animation: Tween(begin: 0.0, end: 1.0).animate(
                        CurvedAnimation(
                          parent: _animationController,
                          curve: Interval((1 / 7) * 3, 1.0,
                              curve: Curves.fastOutSlowIn),
                        ),
                      ),
                      child: customFields(
                          context: context,
                          controller: new TextEditingController(),
                          fieldName: "Email"),
                    ),
                    FadeIn(
                      controller: _animationController,
                      animation: Tween(begin: 0.0, end: 1.0).animate(
                        CurvedAnimation(
                          parent: _animationController,
                          curve: Interval((1 / 7) * 4, 1.0,
                              curve: Curves.fastOutSlowIn),
                        ),
                      ),
                      child: customFields(
                          context: context,
                          controller: new TextEditingController(),
                          fieldName: "Mobile Number"),
                    ),
                    FadeIn(
                      controller: _animationController,
                      animation: Tween(begin: 0.0, end: 1.0).animate(
                        CurvedAnimation(
                          parent: _animationController,
                          curve: Interval((1 / 7) * 5, 1.0,
                              curve: Curves.fastOutSlowIn),
                        ),
                      ),
                      child: customFields(
                        context: context,
                        controller: new TextEditingController(),
                        fieldName: "Password",
                        passwordField: true,
                      ),
                    ),
                    FadeIn(
                      controller: _animationController,
                      animation: Tween(begin: 0.0, end: 1.0).animate(
                        CurvedAnimation(
                          parent: _animationController,
                          curve: Interval((1 / 7) * 6, 1.0,
                              curve: Curves.fastOutSlowIn),
                        ),
                      ),
                      child: customFields(
                        context: context,
                        controller: new TextEditingController(),
                        fieldName: "Confirm Password",
                        passwordField: true,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    FadeIn(
                      controller: _animationController,
                      animation: Tween(begin: 0.0, end: 1.0).animate(
                        CurvedAnimation(
                          parent: _animationController,
                          curve: Interval((1 / 7) * 7, 1.0,
                              curve: Curves.fastOutSlowIn),
                        ),
                      ),
                      child: customButton(
                          context: context,
                          buttonTitle: "REGISTER",
                          onPress: () {
                            debugPrint("Register!!!");
                          }),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    FadeIn(
                      controller: _animationController,
                      animation: Tween(begin: 0.0, end: 1.0).animate(
                        CurvedAnimation(
                          parent: _animationController,
                          curve: Interval((1 / 7) * 7, 1.0,
                              curve: Curves.fastOutSlowIn),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Already have an account?",
                              style: TextStyle(
                                fontSize: 18.0,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                // Login
                                _animationController.reverse().then(
                                      (value) => Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => LoginPage(),
                                        ),
                                      ),
                                    );
                              },
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
