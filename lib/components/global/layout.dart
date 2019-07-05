import 'package:eva_design_flutter/eva_design_flutter.dart';
import 'package:flutter/material.dart' as MaterialDesign;
import 'package:flutter/widgets.dart';

class EqLayout extends StatefulWidget {
  final EqThemeData theme;
  final Widget child;
  final Widget appBar;

  const EqLayout({
    Key key,
    this.theme,
    @required this.child,
    this.appBar,
  }) : super(key: key);
  @override
  _EqLayoutState createState() => _EqLayoutState();
}

class _EqLayoutState extends State<EqLayout> {
  @override
  Widget build(BuildContext context) {
    var theme = widget.theme ?? EqTheme.of(context);
    return EqTheme(
      theme: theme,
      child: AnimatedContainer(
        duration: theme.majorAnimationDuration,
        curve: theme.majorAnimationCurve,
        color: theme.backgroundBasicColors.color3,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            if (widget.appBar != null) widget.appBar,
            Expanded(
              child: widget.child,
            ),
          ],
        ),
      ),
    );
  }
}
