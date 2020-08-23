import 'package:flutter/material.dart';

class CustomUI {
  customFields(
      {BuildContext context,
      String fieldName,
      TextEditingController controller,
      bool passwordField: false}) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: TextFormField(
        controller: controller,
        obscureText: passwordField,
        decoration: InputDecoration(
          hintText: "$fieldName",
          hintStyle: TextStyle(
            fontSize: 20.0,
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
        ),
      ),
    );
  }

  customButton({BuildContext context, String buttonTitle, Function onPress}) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
        onPressed: () {
          onPress();
        },
        color: Theme.of(context).primaryColor,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              "$buttonTitle",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
