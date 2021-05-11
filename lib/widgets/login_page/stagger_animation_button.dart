import 'package:flutter/material.dart';

class StaggerAnimationButton extends StatelessWidget {
  final AnimationController controller;

  StaggerAnimationButton({this.controller}) : 
    buttonSqueeze = Tween(
      begin: 320.0,
      end: 60.0
    ).animate(
      CurvedAnimation(
        parent: controller,
      )
    )
  
  final Animation<double> buttonSqueeze;

  // ignore: missing_return
  Widget _builderAnimation(BuildContext context, Widget child) {
    return Padding(
      padding: EdgeInsets.only(bottom: 50),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 320,
          height: 60,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color.fromRGBO(247, 64, 106, 1.0),
            borderRadius: BorderRadius.all(
              Radius.circular(30.0),
            ),
          ),
          child: Text(
            "Login",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w300,
              letterSpacing: 0.3,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: _builderAnimation,
    );
  }
}
