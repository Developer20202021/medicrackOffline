import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Results extends StatefulWidget {
  const Results({super.key});

  @override
  State<Results> createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
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
            "All Results",
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
                      child: Table(
                        border:
                            TableBorder.all(width: 1.0, color: Colors.black),
                        children: [
                          TableRow(
                            children: [
                              TableCell(
                                child: Center(child: Text('ID', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold) ,)),
                              ),
                              TableCell(
                                child: Center(child: Text('Marks', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold) ,)),
                              ),
                              TableCell(
                                child: Center(child: Text('Position', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold) ,)),
                              ),
                            ],
                          ),
                          for (int i = 0; i < 100; i++)
                            TableRow(
                              children: [
                                TableCell(
                                  child: Center(child: Text('Data 1', style: TextStyle(color: Colors.black, fontSize: 20) ,),),
                                ),
                                TableCell(
                                  child: Center(child: Text('Data 2',style: TextStyle(color: Colors.pink, fontSize: 20, fontWeight: FontWeight.bold),)),
                                ),
                                TableCell(
                                  child: Center(child: Text('Data 3')),
                                ),
                              ],
                            ),
                          // TableRow(
                          //   children: [
                          //     TableCell(
                          //       child: Center(child: Text('Data 4')),
                          //     ),
                          //     TableCell(
                          //       child: Center(child: Text('Data 5')),
                          //     ),
                          //     TableCell(
                          //       child: Center(child: Text('Data 6')),
                          //     ),
                          //   ],
                          // ),
                        ],
                      ),
                    ),
                  ],
                ))));
  }
}
