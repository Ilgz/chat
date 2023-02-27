import 'package:flutter/material.dart';
import 'package:chat/domain/users/user_failure.dart';

class UserCriticalFailureDisplay extends StatelessWidget {
  final UserFailure failure;
  const UserCriticalFailureDisplay({Key? key,required this.failure }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(

      child: Column(mainAxisSize:MainAxisSize.min,children:[
        const Text("😱",style: TextStyle(fontSize:100),),
        Text(failure.map(unexpected: (_)=>"Unexpected error. \nPlease, contact support"),style:const TextStyle(fontSize:24),textAlign:TextAlign.center),
        TextButton(onPressed:(){},child:Row(mainAxisSize:MainAxisSize.min,children:const [
          Icon(Icons.mail),
          SizedBox(height:4),
          Text("I need help")
        ]))
      ]),

    );
  }
}
