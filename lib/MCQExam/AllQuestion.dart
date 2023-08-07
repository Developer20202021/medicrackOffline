import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:the_royal_academy/MCQExam/AddMCQ.dart';
import 'package:the_royal_academy/MCQExam/CreateQuestion.dart';
import 'package:the_royal_academy/MCQExam/PerMCQ.dart';

class AllQuestion extends StatefulWidget {
  const AllQuestion({super.key});

  @override
  State<AllQuestion> createState() => _AllQuestionState();
}

class _AllQuestionState extends State<AllQuestion> {


  List AllQuestionInfo = [



      {
      "QuestionID":"afafsafa",
      "TeacherID":"sdfgswgaw",
      "SubjectName":"Physics",
      "TopicName":"Physics 1st Paper",
      "Time":"10",
      "NegativeMarks":"0.25",
      "QuestionOptionNumber":"2",
      "QuestionCreatingTime":"21/02/2022 10:11AM"
    },



      {
      "QuestionID":"afafsafa",
      "TeacherID":"sdfgswgaw",
      "SubjectName":"Physics",
      "TopicName":"Physics 1st Paper",
      "Time":"10",
      "NegativeMarks":"0.25",
      "QuestionOptionNumber":"2",
      "QuestionCreatingTime":"21/02/2022 10:11AM"

    },



      {
      "QuestionID":"afafsafa",
      "TeacherID":"sdfgswgaw",
      "SubjectName":"Physics",
      "TopicName":"Physics 1st Paper",
      "Time":"10",
      "NegativeMarks":"0.25",
      "QuestionOptionNumber":"2",
      "QuestionCreatingTime":"21/02/2022 10:11AM"

    },



      {
      "QuestionID":"afafsafa",
      "TeacherID":"sdfgswgaw",
      "SubjectName":"Physics",
      "TopicName":"Physics 1st Paper",
      "Time":"10",
      "NegativeMarks":"0.25",
      "QuestionOptionNumber":"2",
      "QuestionCreatingTime":"21/02/2022 10:11AM"

    },


      {
      "QuestionID":"afafsafa",
      "TeacherID":"sdfgswgaw",
      "SubjectName":"Physics",
      "TopicName":"Physics 1st Paper",
      "Time":"10",
      "NegativeMarks":"0.25",
      "QuestionOptionNumber":"2",
      "QuestionCreatingTime":"21/02/2022 10:11AM"

    },


      {
      "QuestionID":"afafsafa",
      "TeacherID":"sdfgswgaw",
      "SubjectName":"Physics",
      "TopicName":"Physics 1st Paper",
      "Time":"10",
      "NegativeMarks":"0.25",
      "QuestionOptionNumber":"2",
      "QuestionCreatingTime":"21/02/2022 10:11AM"

    },


      {
      "QuestionID":"afafsafa",
      "TeacherID":"sdfgswgaw",
      "SubjectName":"Physics",
      "TopicName":"Physics 1st Paper",
      "Time":"10",
      "NegativeMarks":"0.25",
      "QuestionOptionNumber":"2",
      "QuestionCreatingTime":"21/02/2022 10:11AM"

    },


      {
      "QuestionID":"afafsafa",
      "TeacherID":"sdfgswgaw",
      "SubjectName":"Physics",
      "TopicName":"Physics 1st Paper",
      "Time":"10",
      "NegativeMarks":"0.25",
      "QuestionOptionNumber":"2",
      "QuestionCreatingTime":"21/02/2022 10:11AM"

    },


      {
      "QuestionID":"afafsafa",
      "TeacherID":"sdfgswgaw",
      "SubjectName":"Physics",
      "TopicName":"Physics 1st Paper",
      "Time":"10",
      "NegativeMarks":"0.25",
      "QuestionOptionNumber":"2",
      "QuestionCreatingTime":"21/02/2022 10:11AM"

    },

      {
      "QuestionID":"afafsafa",
      "TeacherID":"sdfgswgaw",
      "SubjectName":"Physics",
      "TopicName":"Physics 1st Paper",
      "Time":"10",
      "NegativeMarks":"0.25",
      "QuestionOptionNumber":"2",
      "QuestionCreatingTime":"21/02/2022 10:11AM"

    },

      {
      "QuestionID":"afafsafa",
      "TeacherID":"sdfgswgaw",
      "SubjectName":"Physics",
      "TopicName":"Physics 1st Paper",
      "Time":"10",
      "NegativeMarks":"0.25",
      "QuestionOptionNumber":"2",
      "QuestionCreatingTime":"21/02/2022 10:11AM"

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
            "All Question",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          bottomOpacity: 0.0,
          elevation: 0.0,
        ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.pink,
          foregroundColor: Colors.white,
          onPressed: () {


              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CreateQuestion()),
                );
            // Respond to button press
          },
          icon: Icon(Icons.add),
          label: Text('Create Question'),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [



                   for(var QuestionInfo in AllQuestionInfo)



                ExpandableNotifier(
                  // <-- Provides ExpandableController to its children
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        // every expandable widget
                        Card(
                            child: Padding(
                                padding: EdgeInsets.only(
                                    top: 16.0,
                                    left: 6.0,
                                    right: 6.0,
                                    bottom: 6.0),
                                child: Theme(
                                    data: Theme.of(context).copyWith(
                                        dividerColor: Colors.transparent),
                                    child: ExpansionTile(
                                        leading: Icon(
                                          Icons.file_copy,
                                          color: Colors.pink,
                                          size: 40,
                                        ),
                                        subtitle: Row(
                                          children: [
                                            Text(
                                              '${QuestionInfo["TopicName"]}',
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 48, 2, 56),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                            ),


                                            SizedBox(width: 3,),


                                        
                                          ],
                                        ),
                                        title: Text(
                                          '${QuestionInfo["SubjectName"]}',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 48, 2, 56),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                        children: <Widget>[
                                          //Expandable inner part






                                           



                                             



                                           

                                          ListTile(
                                            leading: Icon(
                                              Icons.timer,
                                              color: Colors.pink,
                                            ),
                                            trailing: Text(
                                              '${QuestionInfo["Time"]} min',
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 48, 2, 56),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                            ),


                                            title: Text("Time:",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),




                                            ListTile(
                                            leading: Icon(
                                              Icons.numbers,
                                              color: Colors.pink,
                                            ),
                                            trailing: Text(
                                              '${QuestionInfo["NegativeMarks"]}',
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 48, 2, 56),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                            ),


                                            title: Text("Negative Marks:",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),


                                          ListTile(
                                            leading: Icon(Icons.note,
                                                color: Colors.pink),
                                            trailing: TextButton(
                                              onPressed: () {


                                                
                                                  Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => const PerMCQ()),
                                                );
                                                     
                                              
                                               
                                              },
                                              child: Text("open",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  )),
                                              style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStatePropertyAll<
                                                        Color>(Colors.pink),
                                              ),
                                            ),
                                            title: Text(
                                              "Question open করো",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),


                                            ListTile(
                                            leading: Icon(Icons.note,
                                                color: Colors.pink),
                                            trailing: TextButton(
                                              onPressed: () {

                                                  Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => const AddMCQ()),
                                                );
                                                                                            
                                               
                                              },
                                              child: Text("Add MCQ",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  )),
                                              style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStatePropertyAll<
                                                        Color>(Colors.pink),
                                              ),
                                            ),
                                            title: Text(
                                              "MCQ Add করো",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),

















                                            ListTile(
                                    leading: Icon(
                                      Icons.video_file_rounded,
                                      color: Colors.pink,
                                    ),
                                    trailing: TextButton(
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            builder: (context) =>
                                                AlertDialog(

                                                  title: Text(
                                      "Are you sure?You want to delete this Question",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),

                                    content: Text("আপনি যদি Question টি Delete করেন তবে এটি Server থেকে সম্পূর্ণভাবে Delete করে দেওয়া হবে। যদি Delete করতে না চান তবে Cancel Button এ Click করুন।"),

                                  actions: [

                                    TextButton(onPressed: (){

                                    }, child: Text("Cancle")),


                                     TextButton(onPressed: (){

                                    }, child: Text("Delete")),

                                  ],



                                                ));
                                      },
                                      child: Text("Delete Question",
                                          style:
                                              TextStyle(color: Colors.white)),
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll<Color>(
                                                Colors.red),
                                      ),
                                    ),
                                    title: Text("Question Delete করো",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold)),
                                  ),











                                          
                                        ])))),
                      ],
                    ),
                  ),
                ),

                  
               
                ],
              )),
        ));
  }
}
