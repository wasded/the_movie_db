import 'package:flutter/material.dart';

class AuthorizationWidget extends StatefulWidget {
  const AuthorizationWidget({Key? key}) : super(key: key);

  @override
  _AuthorizationWidgetState createState() => _AuthorizationWidgetState();
}

class _AuthorizationWidgetState extends State<AuthorizationWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Login to your account")),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            children: const [
              _HeaderWidget(),
              SizedBox(height: 32),
              _FieldsWidget(),
              SizedBox(height: 32),
              _ButtonsWidget()
            ],
          ),
        )));
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
            "In order to use the editing and rating capabilities of TMDB, as well as get personal recommendations you will need to login to your account. If you do not have an account, registering for an account is free and simple."),
      ],
    );
  }
}

class _FieldsWidget extends StatefulWidget {
  const _FieldsWidget({Key? key}) : super(key: key);

  @override
  _FieldsWidgetState createState() => _FieldsWidgetState();
}

class _FieldsWidgetState extends State<_FieldsWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const decorator = InputDecoration(
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        isDense: true);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Username"),
        SizedBox(height: 4),
        TextField(
          decoration: decorator,
        ),
        SizedBox(height: 16),
        Text("Password"),
        SizedBox(height: 4),
        TextField(
          decoration: decorator,
          obscureText: true,
        )
      ],
    );
  }
}

class _ButtonsWidget extends StatelessWidget {
  const _ButtonsWidget({Key? key}) : super(key: key);

  void _login() {

  }

  void _reset() {

  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () => _login(),
          child: const Text("Login"),
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(Colors.white),
            backgroundColor: MaterialStateProperty.all(Colors.blue)
          ),
        ),
        SizedBox(width: 8),
        TextButton(
          onPressed: () => _reset(),
          child: const Text("Reset password"),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(const Color.fromARGB(0, 0, 0, 0))
          ),
        )
      ],
    );
  }
}
