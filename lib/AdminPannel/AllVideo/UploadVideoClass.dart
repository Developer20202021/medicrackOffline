import 'package:flutter/material.dart';

class UploadVideoClass extends StatefulWidget {
  const UploadVideoClass({super.key});

  @override
  State<UploadVideoClass> createState() => _UploadVideoClassState();
}

class _UploadVideoClassState extends State<UploadVideoClass> {


  TextEditingController ClassNameController = TextEditingController();
  
  TextEditingController ClassTitleController = TextEditingController();

  TextEditingController SubjectNameController = TextEditingController();

  TextEditingController ClassNoteLinkController = TextEditingController();

  TextEditingController VideoDurationController = TextEditingController();

  TextEditingController VideoIDController = TextEditingController();

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


              SizedBox(
                      height: 20,
                    ),
            
            
            
                    TextField(
                      minLines: 1,
                      maxLines: 5,
                      
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Class Title',
                          labelStyle: TextStyle(color: Colors.pink),
                   
                          hintText: 'Enter Class Title',
            
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
                      controller:  ClassTitleController,
                    ),
            
            
            
            
                    SizedBox(
                      height: 20,
                    ),



                    
                    TextField(
                      
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
                      controller: ClassNameController,
                    ),


                      SizedBox(
                      height: 20,
                    ),



                    
                    TextField(
                      
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
                      controller: SubjectNameController,
                    ),


                      SizedBox(
                      height: 20,
                    ),



                    
                    TextField(
                      
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Class Note Link',
                          labelStyle: TextStyle(color: Colors.pink),
                          hintText: 'Enter Class Note Link',
            
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
                      controller: ClassNoteLinkController,
                    ),


                      SizedBox(
                      height: 20,
                    ),



                    
                    TextField(
                      
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Video Duration(s)',
                          labelStyle: TextStyle(color: Colors.pink),
                          hintText: 'Enter Video Duration(s)',
            
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
                      controller: VideoDurationController,
                    ),



                       SizedBox(
                      height: 20,
                    ),



                    
                    TextField(
                      
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Video ID',
                          labelStyle: TextStyle(color: Colors.pink),
                          hintText: 'Enter Video ID',
            
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
                      controller: VideoIDController,
                    ),

                       SizedBox(
                      height: 20,
                    ),

                        Container(width: 150, child:TextButton(onPressed: (){}, child: Text("Upload", style: TextStyle(color: Colors.white),), style: ButtonStyle(
                         
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.pink),
              ),),),




            ]))));
  }
}