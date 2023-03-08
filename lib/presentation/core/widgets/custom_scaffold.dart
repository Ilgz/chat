import 'package:flutter/material.dart';
import 'package:chat/presentation/core/widgets/custom_app_bar.dart';

class CustomScaffold extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final Widget body;
  final Widget? floatingActionButton;
  final bool isScrolling;
  final Widget? appBarTitle;
  final BottomNavigationBar? bottomNavigationBar;
  final bool useAppBar;
  final List<Widget> actions;
  final Drawer? drawer;
  final bool hasBackButton;
  const CustomScaffold({
    Key? key,
    required this.body,
    this.floatingActionButton,
    this.padding,
    this.useAppBar = true,
    this.bottomNavigationBar,
    this.actions = const [],
    this.isScrolling = false,
    this.hasBackButton=true,
    this.appBarTitle,
    this.drawer
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:  drawer,
      appBar: useAppBar
          ? CustomAppBar(
        hasBackButton: hasBackButton,
              textTitle: appBarTitle,
              actions: actions,
            )
          : null,
      body: Padding(
        padding: padding ?? const EdgeInsets.symmetric(horizontal: 5),
        child: isScrolling
            ? SingleChildScrollView(
                child: body,
              )
            : body,
      ),
      bottomNavigationBar: bottomNavigationBar,
      floatingActionButton: floatingActionButton,
    );
  }
}
