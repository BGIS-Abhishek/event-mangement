import 'package:flutter/material.dart';
class ApiFailedView extends StatelessWidget {
  final  String ? msg;
  const ApiFailedView ({this.msg,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        const Icon(
          Icons.error,
          color: Colors.red,
          size: 40,
        ),
        Text(msg.toString()),
      ],
    );
  }
}