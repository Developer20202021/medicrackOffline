import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:the_royal_academy/AdminPannel/AllNewStudent.dart';
import 'package:the_royal_academy/AdminPannel/AllVideo/PerClassVideo.dart';

class AllClass extends StatefulWidget {
  const AllClass({super.key});

  @override
  State<AllClass> createState() => _AllClassState();
}

class _AllClassState extends State<AllClass> {


  List AllClassInfo = [
    
    {

      "ClassName": "8",
      "SubjectName":"English 1st Paper",
      "StudentNumber": "100",
      "ClassYear":"2022",

    },


       {

      "ClassName": "8",
      "SubjectName":"English 1st Paper",
      "StudentNumber": "100",
      "ClassYear":"2022",

    },


       {

      "ClassName": "8",
      "SubjectName":"English 1st Paper",
      "StudentNumber": "100",
      "ClassYear":"2022",

    },


       {

      "ClassName": "8",
      "SubjectName":"English 1st Paper",
      "StudentNumber": "100",
      "ClassYear":"2022",

    },


       {

      "ClassName": "8",
      "SubjectName":"English 1st Paper",
      "StudentNumber": "100",
      "ClassYear":"2022",

    },


       {

      "ClassName": "8",
      "SubjectName":"English 1st Paper",
      "StudentNumber": "100",
      "ClassYear":"2022",

    },

       {

      "ClassName": "8",
      "SubjectName":"English 1st Paper",
      "StudentNumber": "100",
      "ClassYear":"2022",

    },


       {

      "ClassName": "8",
      "SubjectName":"English 1st Paper",
      "StudentNumber": "100",
      "ClassYear":"2022",

    },


    
    
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
            "All Class",
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
        
                children: [
        
        
        
        
              for(var ClassInfo in AllClassInfo )
        
                  Container(
        
            width: 400,
          margin: const EdgeInsets.only(bottom: 20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              children: [
                
        
        
        
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
        
        
                      Text("Class: ${ClassInfo["ClassName"]}", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
        
                
                      Text("Subject: ${ClassInfo["SubjectName"]}", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              
                
                    ],
                  ),
                ),
        
        
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
        
        
                      Text("Total Student: ${ClassInfo["StudentNumber"]}", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
        
                
                      Text("Class Year: ${ClassInfo["ClassYear"]}", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              
                
                    ],
                  ),
                ),
        
  
        
                Container(
                  width: 400,
                  
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(12), bottomLeft: Radius.circular(12))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    
        
                    children: [
        
        
                      TextButton(
                         onPressed: () {


                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const AllNewStudent()),
                        );




                               },
                                                child: Text("New Students",
                                                    style: TextStyle(
                                                        color: Colors.white)),
                                                style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStatePropertyAll<
                                                          Color>(Colors.pink),
                                ),
                          ),
        
        
        
        
                          
                      TextButton(
                         onPressed: () {

                          
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const PerClassVideo()),
                        );
           },
                                                child: Text("All Video",
                                                    style: TextStyle(
                                                        color: Colors.white)),
                                                style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStatePropertyAll<
                                                          Color>(Colors.pink),
                                ),
                          ),
        
        
        
        
                  
                      TextButton(
                         onPressed: () {
                                           },
                                                child: Text("All Exams",
                                                    style: TextStyle(
                                                        color: Colors.white)),
                                                style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStatePropertyAll<
                                                          Color>(Colors.pink),
                                ),
                          ),
        
        
        
        
                    ],
        
        
                  ),
                  padding: const EdgeInsets.all(12),
                )
              ],
            ),
          )
        
        
        
        
        
        
                ],
        
        
              )
              
              
              
              ),
        ));
  }
}
