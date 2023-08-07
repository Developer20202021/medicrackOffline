import 'package:flutter/material.dart';

class StudentScanInfo extends StatelessWidget {
  final String StudentScanInformation;
  const StudentScanInfo({super.key,required this.StudentScanInformation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.pink),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context, true);
              },
              icon: Icon(Icons.chevron_left)),
          title: const Text(
            "Create New Class",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          bottomOpacity: 0.0,
          elevation: 0.0,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.save,
            color: Colors.white,
          ),
          backgroundColor: Colors.pink,
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(children: [

                  Text(StudentScanInformation)


                ]))));
  }
}
