import 'package:flutter/material.dart';
import 'package:winter_event/widget/common_app_bar.dart';

class ViewEventScreen extends StatefulWidget {
  static const String route = '/viewEventScreen';
  const ViewEventScreen({Key? key}) : super(key: key);

  @override
  State<ViewEventScreen> createState() => _ViewEventScreenState();
}

class _ViewEventScreenState extends State<ViewEventScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:const CommonAppBar(
        title: 'Event Details',
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Column(

        ),
      ),
    );
  }
}
