import 'package:flutter/material.dart';

class NoResultCard extends StatelessWidget {
  const NoResultCard(this.message,this.icon,{Key? key}) : super(key: key);
  final String message;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Icon(icon,color:Theme.of(context).iconTheme.color,size: 128,),
          FittedBox(
            fit: BoxFit.contain,
            child: Text(message, style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,),
          )
        ],),
    );
  }
}
