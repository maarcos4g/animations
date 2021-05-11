import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return FlatButton(
      padding: EdgeInsets.only(
        top: 160,
      ),
      onPressed: () {},
      child: Text(
        "Não possui Cadastro? Clique aqui.",
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontWeight: FontWeight.w300,
          color: Colors.white,
          fontSize: 12,
          letterSpacing: 0.8,
        ),
      ),
    );
  }
}
