import 'package:flutter/material.dart';

class CustomAppBar extends AppBar {
  final String? textTitle;
  final TextStyle? textStyle;
  final IconData? leadingIconData;
  @override
  final List<Widget> actions;
  CustomAppBar({
    Key? key,
    this.textTitle,
    this.actions=const [],
    this.textStyle,
    this.leadingIconData,
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
            // shape: const RoundedRectangleBorder(
            //   borderRadius: BorderRadius.all(Radius.circular(8)),
            // ),
            // leading: IconButton(
            //   onPressed: () {},
            //   icon: Icon(widget.leadingIconData),
            // ),
            elevation: 0,
            titleTextStyle: widget.textStyle,
            title: Text(widget.textTitle ?? 'Task-manager'),
          ),
        ),
      ),
    );
  }
}