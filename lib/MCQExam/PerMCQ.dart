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
      "questionNumber": 1,
      "questionName": "নিচের কোনটি সঠিক?",
      "options": ["ok", "Yes", "color", "No"]
    },
    {
      "questionNumber": 1,
      "questionName": "নিচের কোনটি সঠিক?",
      "options": ["ok1", "Yes1", "color1", "No1"]
    },
    {
      "questionNumber": 1,
      "questionName": "নিচের কোনটি সঠিক?",
      "options": ["ok2", "Yes2", "color2", "No2"]
    },
    {
      "questionNumber": 1,
      "questionName": "নিচের কোনটি সঠিক?",
      "options": ["ok3", "Yes3", "color3", "No3"]
    },
    {
      "questionNumber": 1,
      "questionName": "নিচের কোনটি সঠিক?",
      "options": ["ok4", "Yes4", "color4", "No4"]
    },
    {
      "questionNumber": 1,
      "questionName": "নিচের কোনটি সঠিক?",
      "options": ["ok5", "Yes5", "color5", "No5"]
    },
    {
      "questionNumber": 1,
      "questionName": "নিচের কোনটি সঠিক?",
      "options": ["ok6", "Yes6", "color6", "No6"]
    },
  ];

  var selectedOption = "1";
  int ListNumber = 0;

  @override
  void initState() {
    super.initState();
  }

  setSelectedQuestion(option) {
    setState(() {
      selectedOption = option;
    });
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
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFFF05A22),
                      style: BorderStyle.solid,
                      width: 1.0,
                    ),
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "নিচের কোনটি সঠিক?",
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

                      if (ListNumber + 1 < Question.length) TextButton(
                              onPressed: () {
                             
                                  setState(() {
                                    ListNumber = ListNumber + 1;
                                  });
                            
                              },
                              child: Text("Next")) else TextButton(
                              onPressed: () {
                             
                            
                              },
                              child: Text("Complete"))
                    ],
                  ),
                )
              ])),
        ));
  }
}
