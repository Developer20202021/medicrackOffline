import 'package:flutter/material.dart';

class CreateQuestion extends StatefulWidget {
  const CreateQuestion({super.key});

  @override
  State<CreateQuestion> createState() => _CreateQuestionState();
}

class _CreateQuestionState extends State<CreateQuestion> {
 TextEditingController TopicNameController = TextEditingController();
  TextEditingController SubjectNameController = TextEditingController();
  TextEditingController TimeController = TextEditingController();
  TextEditingController NegativeMarksController = TextEditingController();
  TextEditingController QuestionOptionNumberController = TextEditingController();
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
            "Create New Question",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          bottomOpacity: 0.0,
          elevation: 0.0,
        ),

        floatingActionButton: FloatingActionButton(onPressed: (){


        },
        
        child: Icon(Icons.save, color: Colors.white,),
        backgroundColor: Colors.pink,
        
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [



              
                    TextField(
                      minLines: 1,
                      maxLines: 5,
                      
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Subject Name',
                          labelStyle: TextStyle(color: Colors.pink),
                   
                          hintText: 'Enter Subject Name',
            
                          //  enabledBorder: OutlineInputBorder(
                          //       borderSide: BorderSide(width: 3, color: Colors.greenAccent),
                          //     ),
                              focusedBorder: OutlineInputBorder(
                             borderSide: BorderSide(width: 3, color: Colors.pink),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 3, color: Color.fromARGB(255, 66, 125, 145)),
                              ),
                          
                          
                          ),
                      controller:  SubjectNameController,
                    ),
            
            
            
            
                    SizedBox(
                      height: 20,
                    ),



                     TextField(
                      minLines: 1,
                      maxLines: 5,
                      
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Topic Name',
                          labelStyle: TextStyle(color: Colors.pink),
                   
                          hintText: 'Enter Topic Name',
            
                          //  enabledBorder: OutlineInputBorder(
                          //       borderSide: BorderSide(width: 3, color: Colors.greenAccent),
                          //     ),
                              focusedBorder: OutlineInputBorder(
                             borderSide: BorderSide(width: 3, color: Colors.pink),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 3, color: Color.fromARGB(255, 66, 125, 145)),
                              ),
                          
                          
                          ),
                      controller:  TopicNameController,
                    ),
            
            
            
            
                    SizedBox(
                      height: 20,
                    ),



                    
                     


                    
                     TextField(
                      minLines: 1,
                      maxLines: 5,
                      
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Time (min)',
                          labelStyle: TextStyle(color: Colors.pink),
                   
                          hintText: 'Enter Time(min)',
            
                          //  enabledBorder: OutlineInputBorder(
                          //       borderSide: BorderSide(width: 3, color: Colors.greenAccent),
                          //     ),
                              focusedBorder: OutlineInputBorder(
                             borderSide: BorderSide(width: 3, color: Colors.pink),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 3, color: Color.fromARGB(255, 66, 125, 145)),
                              ),
                          
                          
                          ),
                      controller:  TimeController,
                    ),
            
            
            
            
                    SizedBox(
                      height: 20,
                    ),



                    
                     TextField(
                      minLines: 1,
                      maxLines: 5,
                     keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Negative Marks',
                          labelStyle: TextStyle(color: Colors.pink),
                   
                          hintText: 'Enter Negative Marks',
            
                          //  enabledBorder: OutlineInputBorder(
                          //       borderSide: BorderSide(width: 3, color: Colors.greenAccent),
                          //     ),
                              focusedBorder: OutlineInputBorder(
                             borderSide: BorderSide(width: 3, color: Colors.pink),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 3, color: Color.fromARGB(255, 66, 125, 145)),
                              ),
                          
                          
                          ),
                      controller:  NegativeMarksController,
                    ),
            
            
            
            
                    SizedBox(
                      height: 20,
                    ),



                    
                     TextField(
                      minLines: 1,
                      maxLines: 5,
                      
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Question option Number',
                          labelStyle: TextStyle(color: Colors.pink),
                   
                          hintText: 'Enter Question option Number',
            
                          //  enabledBorder: OutlineInputBorder(
                          //       borderSide: BorderSide(width: 3, color: Colors.greenAccent),
                          //     ),
                              focusedBorder: OutlineInputBorder(
                             borderSide: BorderSide(width: 3, color: Colors.pink),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 3, color: Color.fromARGB(255, 66, 125, 145)),
                              ),
                          
                          
                          ),
                      controller:  QuestionOptionNumberController,
                    ),
            
            
            
            
                    SizedBox(
                      height: 20,
                    ),


                    
                    
            
                    SizedBox(
                      height: 20,
                    ),


                        Container(width: 150, child:TextButton(onPressed: (){}, child: Text("Create", style: TextStyle(color: Colors.white),), style: ButtonStyle(
                         
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.pink),
              ),),),

                    
                    







            ]))))

;
  }
}