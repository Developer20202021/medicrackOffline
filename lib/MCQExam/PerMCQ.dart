import 'dart:async';

import 'package:flutter/material.dart';

class PerMCQ extends StatefulWidget {
  const PerMCQ({super.key});

  @override
  State<PerMCQ> createState() => _PerMCQState();
}

class _PerMCQState extends State<PerMCQ> {
  String item = "3";

  List Question = [
    {
      "McqTitle": "নিচের কোনটি সঠিক?",
      "QuestionId": "232423",
      "options": ["ok", "Yes", "color", "No"],
      "CorrectAnswer": "ok"
    },
    {
      "McqTitle": "নিচের কোনটি সঠিক না ?",
      "QuestionId": "232423",
      "options": ["ok", "Yes", "color", "No"],
      "CorrectAnswer": "ok"
    },
    {
      "McqTitle": "নিচের কোনটি সঠিক ok?",
      "QuestionId": "232423",
      "options": ["ok", "Yes", "color", "No"],
      "CorrectAnswer": "ok"
    },
    {
      "McqTitle": "নিচের কোনটি সঠিক? yes",
      "QuestionId": "232423",
      "options": ["ok", "Yes", "color", "No"],
      "CorrectAnswer": "ok"
    },
    {
      "McqTitle": "নিচের কোনটি সঠিক?",
      "QuestionId": "232423",
      "options": ["ok", "Yes", "color", "No"],
      "CorrectAnswer": "ok"
    },
    {
      "McqTitle": "নিচের কোনটি সঠিক?",
      "QuestionId": "232423",
      "options": ["ok", "Yes", "color", "No"],
      "CorrectAnswer": "ok"
    },
    {
      "McqTitle": "নিচের কোনটি সঠিক?",
      "QuestionId": "232423",
      "options": ["ok", "Yes", "color", "No"],
      "CorrectAnswer": "ok"
    },
    {
      "McqTitle": "নিচের কোনটি সঠিক?",
      "QuestionId": "232423",
      "options": ["ok", "Yes", "color", "No"],
      "CorrectAnswer": "ok"
    },
    {
      "McqTitle": "নিচের কোনটি সঠিক?",
      "QuestionId": "232423",
      "options": ["ok", "Yes", "color", "No"],
      "CorrectAnswer": "ok"
    },
    {
      "McqTitle": "নিচের কোনটি সঠিক?",
      "QuestionId": "232423",
      "options": ["ok", "Yes", "color", "No"],
      "CorrectAnswer": "ok"
    },
    {
      "McqTitle": "নিচের কোনটি সঠিক?",
      "QuestionId": "232423",
      "options": ["ok", "Yes", "color", "No"],
      "CorrectAnswer": "ok"
    },
    {
      "McqTitle": "নিচের কোনটি সঠিক?",
      "QuestionId": "232423",
      "options": ["ok", "Yes", "color", "No"],
      "CorrectAnswer": "ok"
    },
  ];

  var selectedOption = "1";
  int ListNumber = 0;

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  setSelectedQuestion(option) {
    setState(() {
      selectedOption = option;
    });
  }







    // Timer 

    
  late Timer _timer;
  int _start = 10;

  void startTimer() {
    const oneSec = const Duration(minutes: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }



   @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }









  @override
  Widget build(BuildContext context) {



    


   
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.pink),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.chevron_left)),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "MAT2023",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          backgroundColor: Colors.transparent,
          bottomOpacity: 0.0,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(children: [




                 Container(
                  width: 400,
                  margin: const EdgeInsets.only(bottom: 40.0),
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
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                  
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Subject Name: Physics", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                  
                  
                             Text("Marks: 20", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                          ],
                        ),
                  
                        SizedBox(
                          height: 10,
                        ),
                  
                          Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Topic Name: Physics", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                  
                  
                             Text("Time: ${_start} min", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                          ],
                        ),
                  
                  
                  
                  
                  
                      ]),
                  )),


                    SizedBox(height: 10,),












                //QUESTION CARD 
                Container(
                  width: 400,
                  margin: const EdgeInsets.only(bottom: 40.0),
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
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "${ListNumber + 1}.${Question[ListNumber]["McqTitle"]}",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      for (var items in Question[ListNumber]["options"])
                        RadioListTile(
                          value: items,
                          title: Text(
                            "${items}",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          groupValue: selectedOption,
                          selected: selectedOption == items,
                          onChanged: (val) {
                            print(val);
                            selectedOption = "1";
                            setSelectedQuestion(val);
                          },
                        ),
                      if (ListNumber + 1 < Question.length)
                        Container(
                          child: TextButton(
                              onPressed: () {
                                setState(() {
                                  ListNumber = ListNumber + 1;
                                });
                              
                              },
                              child: Text("Next", style: TextStyle(color: Colors.white),), style: ButtonStyle(
                         
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.pink),
              ),),
                        )
                      else
                         Container(width: 150, child:TextButton(onPressed: (){}, child: Text("Complete", style: TextStyle(color: Colors.white),), style: ButtonStyle(
                         
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
              ),),),
                    ],
                  ),
                )
              ])),
        ));
  }
}
