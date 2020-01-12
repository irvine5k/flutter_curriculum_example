import 'package:flutter/material.dart';

class AnimatedOpacityWidget extends StatelessWidget {
  final Widget widget;

  const AnimatedOpacityWidget({Key key, this.widget}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      builder: (BuildContext context, double value, Widget child) {
        return Opacity(
          opacity: value,
          child: widget,
        );
      },
      duration: Duration(milliseconds: 1000),
      tween: Tween<double>(begin: 0.0, end: 1.0),
    );
  }
}
