import 'package:flutter/material.dart';

class LoginBtn extends StatelessWidget {
  final bool isBusy;
  final String title;
  const LoginBtn({
    Key? key,this.isBusy= false, this.title="Login"
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            height: 56,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text(
                title,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}