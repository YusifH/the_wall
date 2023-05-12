import 'package:flutter/material.dart';

class WallPost extends StatelessWidget {
  final String message;
  final String user;
  const WallPost({Key? key, required this.message, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7,
      child: ListTile(
        leading: Container(
          width: 45,
          height: 45,
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(45),
            color: Colors.grey[200]
          ),
          child: const Icon(Icons.person_outline, size: 30,),),
        title: Text(message),
        subtitle: Text(user),
      ),
    );
  }
}
