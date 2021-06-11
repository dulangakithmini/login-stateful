import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  /// Create a new instance variable to store the Globalkey
  /// FormState class is referenced to the GlobalKey
  final formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        /// Associate the created GlobalKey with the Form we are creating
        key: formKey,
        child: Column(
          children: [
            emailField(),
            passwordField(),
            submitButton(),
          ],
        ),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Email',
        hintText: 'me@text.com',
      ),

      /// Set the keyboard type to optimize for email addresses
      keyboardType: TextInputType.emailAddress,
      validator: (String value) {
        /// Return null if valid. Return a String( with the error message) if invalid
        if (!value.contains('@')) {
          return 'Enter a valid Email address!';
        }
        return null;
      },
      onSaved: (String value) {
        email = value;
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Password',
      ),

      /// Set obscureText to true to make the entered password appear in dots
      obscureText: true,
      validator: (String value) {
        if (value.length < 8) {
          return 'Enter a password of 8 characters';
        }
        return null;
      },
      onSaved: (String value) {
        password = value;
      },
    );
  }

  Widget submitButton() {
    return Container(
      /// Create an ElevatedButton
      child: ElevatedButton(
        onPressed: () {
          /// Reset all the FormFields
          // formKey.currentState.reset();

          /// Validate TextFormFields
          // formKey.currentState.validate();

          /// If valid, save
          if (formKey.currentState.validate()) {
            formKey.currentState.save();
          }
        },
        child: Text('Submit'),

        /// Get styles to ElevatedButton
        style: ElevatedButton.styleFrom(
          /// Color of the text on the button
          onPrimary: Colors.black,
        ),
      ),

      /// Add margin to the top of the button
      margin: EdgeInsets.only(top: 20.0),
    );
  }
}
