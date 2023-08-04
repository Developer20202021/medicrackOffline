import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_ui_toolkit/flutter_ui_toolkit.dart';

class YourQuestionScreen extends StatefulWidget {
  const YourQuestionScreen({super.key});

  @override
  State<YourQuestionScreen> createState() => _YourQuestionScreenState();
}

class _YourQuestionScreenState extends State<YourQuestionScreen> {
  TextEditingController myEmailController = TextEditingController();
  TextEditingController myPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    FocusNode myFocusNode = new FocusNode();
 

    return Scaffold(
     
      backgroundColor: Colors.white,
      
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.pink),
        leading: IconButton(onPressed: (){
          Navigator.pop(context,true);
        }, icon: Icon(Icons.chevron_left)),
        title: const Text("Share Problem", style: TextStyle(color: Colors.black),),
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

              Image.asset('assets/images/102928-course.gif', width: 700,height: 200,),



              TextField(
                
                focusNode: myFocusNode,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Topic Name',
                     labelStyle: TextStyle(
        color: myFocusNode.hasFocus ? Colors.pink: Colors.black
      ),
                    hintText: 'Enter Topic Name',

                    //  enabledBorder: OutlineInputBorder(
                    //       borderSide: BorderSide(width: 3, color: Colors.greenAccent),
                    //     ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Color(0xffF02E65)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 3, color: Color.fromARGB(255, 66, 125, 145)),
                        ),
                    
                    
                    ),
                    maxLines: 6,
                    minLines: 1,
                controller: myEmailController,
                
              ),




              SizedBox(
                height: 20,
              ),





              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter Problem',
                     labelStyle: TextStyle(
        color: myFocusNode.hasFocus ? Colors.pink: Colors.black
      ),
                    hintText: 'Enter Problem',
                    //  enabledBorder: OutlineInputBorder(
                    //     borderSide: BorderSide(width: 3, color: Colors.greenAccent),
                    //   ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Color(0xffF02E65)),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 3, color: Color.fromARGB(255, 66, 125, 145)),
                      ),
                    
                    
                    ),
                    maxLines: 20,
                    minLines: 1,
                controller: myPassController,
              ),

              SizedBox(
                height: 10,
              ),


              Container(width: 150, child:TextButton(onPressed: (){}, child: Text("Submit", style: TextStyle(color: Colors.white),), style: ButtonStyle(
               
    backgroundColor: MaterialStatePropertyAll<Color>(Colors.pink),
  ),),)



            ],
          ),
        ),
      ),
    );
  }
}
