import 'package:flutter/material.dart';

class CustomAppBar extends AppBar {
  final Widget? textTitle;
  final TextStyle? textStyle;
  final IconData? leadingIconData;
  final bool hasBackButton;
  final List<Widget> actions;
  CustomAppBar({
    Key? key,
    this.textTitle,
    this.actions=const [],
    this.textStyle,
    this.leadingIconData,
    this.hasBackButton=true
  }) : super(key: key);

  @override
  State<AppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 46,
          child: AppBar(
              backgroundColor: Theme.of(context).primaryColor,
            actions: widget.actions,
            elevation: 0,
            automaticallyImplyLeading: widget.hasBackButton,
            titleTextStyle: widget.textStyle,
            title: widget.textTitle,
          ),
        ),
      ),
    );
  }
}