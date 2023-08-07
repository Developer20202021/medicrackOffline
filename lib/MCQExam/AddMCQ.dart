import 'package:flutter/material.dart';

class AddMCQ extends StatefulWidget {
  const AddMCQ({super.key});

  @override
  State<AddMCQ> createState() => _AddMCQState();
}

class _AddMCQState extends State<AddMCQ> {
 TextEditingController QuestionTitleController = TextEditingController();
  TextEditingController Option1Controller = TextEditingController();
  TextEditingController Option2Controller = TextEditingController();
  TextEditingController Option3Controller = TextEditingController();
  TextEditingController Option4Controller = TextEditingController();
  TextEditingController CorrectAnswerController = TextEditingController();
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
            "Add MCQ",
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
                          labelText: 'Question Title',
                          labelStyle: TextStyle(color: Colors.pink),
                   
                          hintText: 'Enter Question Title',
            
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
                      controller:  QuestionTitleController,
                    ),
            
            
            
            
                    SizedBox(
                      height: 20,
                    ),



                     TextField(
                      minLines: 1,
                      maxLines: 5,
                      
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Option1',
                          labelStyle: TextStyle(color: Colors.pink),
                   
                          hintText: 'Enter Option1',
            
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
                      controller:  Option1Controller,
                    ),
            
            
            
            
                    SizedBox(
                      height: 20,
                    ),



                    
                     


                    
                     TextField(
                      minLines: 1,
                      maxLines: 5,
                      
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'option2',
                          labelStyle: TextStyle(color: Colors.pink),
                   
                          hintText: 'Enter Option2',
            
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
                      controller: Option2Controller,
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
                          labelText: 'Option3',
                          labelStyle: TextStyle(color: Colors.pink),
                   
                          hintText: 'Enter Option3',
            
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
                      controller:  Option3Controller,
                    ),
            
            
            
            
                    SizedBox(
                      height: 20,
                    ),



                    
                     TextField(
                      minLines: 1,
                      maxLines: 5,
                      
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Question Option4',
                          labelStyle: TextStyle(color: Colors.pink),
                   
                          hintText: 'Enter Option4',
            
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
                      controller:  Option4Controller,
                    ),
            
            
            
            
                    SizedBox(
                      height: 20,
                    ),


                    
                    
            
                    SizedBox(
                      height: 20,
                    ),



                    TextField(
                      minLines: 1,
                      maxLines: 5,
                      
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Correct Answer',
                          labelStyle: TextStyle(color: Colors.pink),
                   
                          hintText: 'Enter Correct Answer',
            
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
                      controller:  CorrectAnswerController,
                    ),


                        Container(width: 150, child:TextButton(onPressed: (){}, child: Text("Create", style: TextStyle(color: Colors.white),), style: ButtonStyle(
                         
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.pink),
              ),),),

                    
                    







            ]))))

;
  }
}