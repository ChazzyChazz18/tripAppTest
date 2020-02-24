import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashEffect extends StatelessWidget {
  final Widget child;
  final Function onTap;
  final double borderRadius;

  const SplashEffect({Key key, this.child, this.onTap, this.borderRadius}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        child: child,
        onTap: onTap,
      ),
    );
  }
}