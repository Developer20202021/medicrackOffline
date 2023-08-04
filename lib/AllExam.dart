import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:the_royal_academy/PerExamResult.dart';

class AllExam extends StatefulWidget {
  const AllExam({super.key});

  @override
  State<AllExam> createState() => _AllExamState();
}

class _AllExamState extends State<AllExam> {


    final List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
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
            "All Exams",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          bottomOpacity: 0.0,
          elevation: 0.0,
        ),
        body:  Padding(
                padding: const EdgeInsets.all(20.0),
                child:  ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return   ListTile(
              leading: Icon(Icons.picture_as_pdf_rounded),
              title: Text('গুণগত রসায়ন'),
              subtitle: Text('রসায়ন ২য় পত্র Date:23/07/2023'),
              isThreeLine: true,
              trailing: Icon(Icons.arrow_forward),
             onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => PerExamResult()));
        },
            );
          },
        ),));
  }
}