import 'package:flutter/material.dart';

class AddNewClass extends StatefulWidget {
  const AddNewClass({super.key});

  @override
  State<AddNewClass> createState() => _AddNewClassState();
}

class _AddNewClassState extends State<AddNewClass> {

  TextEditingController ClassNameController = TextEditingController();
  TextEditingController SubjectNameController = TextEditingController();
  TextEditingController ClassYearController = TextEditingController();
  TextEditingController TeacherNameController = TextEditingController();
  TextEditingController TeacherIDController = TextEditingController();
  TextEditingController TeacherPhoneNumberController = TextEditingController();
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
            "Upload Video",
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
                          labelText: 'Class Name',
                          labelStyle: TextStyle(color: Colors.pink),
                   
                          hintText: 'Enter Class Name',
            
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
                      controller:  ClassNameController,
                    ),
            
            
            
            
                    SizedBox(
                      height: 20,
                    ),



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
                          labelText: 'Class Year',
                          labelStyle: TextStyle(color: Colors.pink),
                   
                          hintText: 'Enter Class Year',
            
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
                      controller:  ClassYearController,
                    ),
            
            
            
            
                    SizedBox(
                      height: 20,
                    ),



                    
                     TextField(
                      minLines: 1,
                      maxLines: 5,
                      
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Teacher Name',
                          labelStyle: TextStyle(color: Colors.pink),
                   
                          hintText: 'Enter Teacher Name',
            
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
                      controller:  TeacherNameController,
                    ),
            
            
            
            
                    SizedBox(
                      height: 20,
                    ),



                    
                     TextField(
                      minLines: 1,
                      maxLines: 5,
                      
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Teacher ID',
                          labelStyle: TextStyle(color: Colors.pink),
                   
                          hintText: 'Enter Teacher ID',
            
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
                      controller:  TeacherIDController,
                    ),
            
            
            
            
                    SizedBox(
                      height: 20,
                    ),


                    
                     TextField(
                      minLines: 1,
                      maxLines: 5,
                      
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Teacher Phone Number',
                          labelStyle: TextStyle(color: Colors.pink),
                   
                          hintText: 'Enter Teacher Phone Number',
            
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
                      controller:  TeacherPhoneNumberController,
                    ),
            
            
            
            
                    SizedBox(
                      height: 20,
                    ),


                        Container(width: 150, child:TextButton(onPressed: (){}, child: Text("Save", style: TextStyle(color: Colors.white),), style: ButtonStyle(
                         
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.pink),
              ),),),

                    
                    







            ]))))

;
  }
}