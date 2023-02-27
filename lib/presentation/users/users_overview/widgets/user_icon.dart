import 'package:flutter/material.dart';
import 'package:chat/presentation/core/utils/name_color_generator.dart';

class UserIcon extends StatelessWidget {
  const UserIcon(this.name,{Key? key,this.size=30}) : super(key: key);
  final String name;
  final double size;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: CircleAvatar(
        backgroundColor: NameColorGenerator.generateColorFromName(name),
        radius: 18,
        child: FittedBox(
          fit:BoxFit.cover,
          child: Padding(
            padding: const EdgeInsets.all(100.0),
            child: Text(
              name[0].toUpperCase(),

              style: const TextStyle(color: Colors.white,fontSize: 400),
            ),
          ),
        ),
      ),
    );
  }

}
