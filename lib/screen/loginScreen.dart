import 'package:flutter/material.dart';
import 'package:login_ui_flutter/UI/customAnimation.dart';
import 'package:login_ui_flutter/UI/customUI.dart';
import 'package:login_ui_flutter/screen/registerScreen.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
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
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FadeIn(
                  child: Text(
                    "Login",
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
                      curve: Interval((1 / 7) * 2, 1.0,
                          curve: Curves.fastOutSlowIn),
                    ),
                  ),
                  child: Text(
                    "Please login to your account.",
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
                      curve: Interval((1 / 7) * 3, 1.0,
                          curve: Curves.fastOutSlowIn),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Flexible(
                        child: customFields(
                          context: context,
                          controller: new TextEditingController(),
                          fieldName: "Password",
                          passwordField: true,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          //forgot Password.
                        },
                        child: Text(
                          "Forgot Password?",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      )
                    ],
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
                      curve: Interval((1 / 7) * 4, 1.0,
                          curve: Curves.fastOutSlowIn),
                    ),
                  ),
                  child: customButton(
                      context: context,
                      buttonTitle: "LOGIN",
                      onPress: () {
                        debugPrint("LOGIN!!!");
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
                      curve: Interval((1 / 7) * 5, 1.0,
                          curve: Curves.fastOutSlowIn),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.4),
                          ),
                          height: 2.5,
                          width: MediaQuery.of(context).size.width / 2 - 50,
                        ),
                        Text(
                          "OR",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.withOpacity(0.4)),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.4),
                          ),
                          height: 2.5,
                          width: MediaQuery.of(context).size.width / 2 - 50,
                        ),
                      ],
                    ),
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
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                //Icon1
                              },
                              child: Icon(
                                Icons.mail,
                                size: 50.0,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                //Icon1
                              },
                              child: Icon(
                                Icons.people,
                                size: 50.0,
                                color: Colors.cyan,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
              ],
            ),
            Positioned(
              bottom: 8.0,
              left: 5.0,
              right: 5.0,
              child: FadeIn(
                controller: _animationController,
                animation: Tween(begin: 0.0, end: 1.0).animate(
                  CurvedAnimation(
                    parent: _animationController,
                    curve:
                        Interval((1 / 7) * 7, 1.0, curve: Curves.fastOutSlowIn),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Don't Have an account?",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // Register.
                          _animationController
                              .reverse()
                              .then((value) => Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => RegisterPage(),
                                    ),
                                  ));
                        },
                        child: Text(
                          "Register",
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
            ),
          ],
        ),
      ),
    );
  }
}
