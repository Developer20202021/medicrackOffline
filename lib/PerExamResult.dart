import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:the_royal_academy/LecturePDF.dart';
import 'package:the_royal_academy/ViewQuestion.dart';

class PerExamResult extends StatefulWidget {
  const PerExamResult({super.key});

  @override
  State<PerExamResult> createState() => _PerExamResultState();
}

class _PerExamResultState extends State<PerExamResult> {
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
            "Your Result",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          bottomOpacity: 0.0,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Center(
          child: Card(
            elevation: 4.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'রসায়ন ২য় পত্র গুণগত রসায়ন Marks 90.5',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Date: 23/05/2023',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'তোমার উচিত আরো ভালো করা',
                  ),
                  SizedBox(height: 16.0),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      onPressed:  () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => LecturePDF(pdfUrl: 'https://drive.google.com/file/d/1C5iYfIYxFNa58MLZj92Csp18l41iAFf3/view?usp=share_link',)));
        },
                      child: Text('View Question'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),





                  ]))));
  }
}