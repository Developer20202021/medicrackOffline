import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:the_royal_academy/AdminPannel/AllNewStudent.dart';
import 'package:the_royal_academy/AdminPannel/PaymentRcv.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:the_royal_academy/LecturePDF.dart';
import 'package:the_royal_academy/OurClass.dart';
import 'package:the_royal_academy/Results.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {


  //     late List<StudentInfo> _chartData;
  // late TooltipBehavior _tooltipBehavior;

  // @override
  // void initState() {
  //   setState(() {
  //     _chartData = getStudentInfo();
  //     _tooltipBehavior = TooltipBehavior(enable: true);
  //   });
  //   super.initState();
  // }



  int _currentIndex = 0;






    return Scaffold(

      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [

              
              // SizedBox(height: 40,child: Text("Hi! Mahadi Hasan", textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26, ),),),


              SizedBox(
                height: 80,
  width: 250.0,
  child: DefaultTextStyle(
    style: const TextStyle(
      fontSize: 30.0,
      color: Colors.pink,
      fontFamily: 'Agne',
      fontWeight: FontWeight.bold
    ),
    child: AnimatedTextKit(
      animatedTexts: [
        TypewriterAnimatedText('Hi!...'),
        TypewriterAnimatedText('Mahadi Hasan'),
        TypewriterAnimatedText('Welcome to our Family'),
        TypewriterAnimatedText('Complete Your task...'),
      ],
      onTap: () {
        print("Tap Event");
      },
    ),
  ),
),


SizedBox(height: 30,),


              Row(
                
              
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:20),
                    child: CircleAvatar(
                      backgroundColor: Colors.pink,
                      radius: 50,
                      child: CircleAvatar(
                         radius: 45,
                        backgroundImage: NetworkImage("https://media.geeksforgeeks.org/auth/profile/qld7490dwzh3s3pome2x"),
                      ),
                    ),
                  ),

                
                 Column(
                   children: [
                    Text("Your Progress", style: TextStyle(fontWeight: FontWeight.bold),),
                     Padding(
                        padding: EdgeInsets.only(left: 0),
                        child: new LinearPercentIndicator(
                          width: 250,
                          animation: true,
                          lineHeight: 20.0,
                          animationDuration: 2500,
                          percent: 0.8,
                          center: Text("80.0%", style: TextStyle(color: Colors.white, fontSize: 15),),
                          
                          barRadius: Radius.circular(30),
                          progressColor: Colors.pink,
                        ),
                      ),
                   ],
                 ),


                ],
              ),


              SizedBox(height: 30,),

              




              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 10),
                child: Row(
                children: [
              
                   Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width - 150,
                        height: 140,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.pink,
                  Colors.blue,
                ],
                          ),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 5,
                  spreadRadius: 2,
                ),
                          ],
                        ),
                        child: Center(
                          child: Column(
                children: [
              
                  Center(
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                children: [
                    
                  Text("Your Class 80% Complete", style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),),
              
                  
                SizedBox(height: 30,),
                    
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: new LinearPercentIndicator(
                      width: 180,
                      animation: true,
                      lineHeight: 20.0,
                      animationDuration: 2500,
                      percent: 0.8,
                      center: Text("80.0%", style: TextStyle(color: Colors.white, fontSize: 15),),
                      
                      barRadius: Radius.circular(30),
                      progressColor: Colors.orange,
                    ),
                  ),
                ],
                          ),
                        ),
                      ),
              
              
              
                
                ],
                          ),
                        ),
                      ),
                    ),


                     SizedBox(width: 20,),
              
              
               Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width - 150,
                        height: 140,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.pink,
                  Colors.blue,
                ],
                          ),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 5,
                  spreadRadius: 2,
                ),
                          ],
                        ),
                        child: Center(
                          child: Column(
                children: [
              
                  Center(
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                children: [
                    
                  Text("Your Note 70% Complete", style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),),
              
                  
                SizedBox(height: 30,),
                    
                  Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: new LinearPercentIndicator(
                      width: 150,
                      animation: true,
                      lineHeight: 20.0,
                      animationDuration: 2500,
                      percent: 0.7,
                      center: Text("80.0%", style: TextStyle(color: Colors.white, fontSize: 15),),
                      
                      barRadius: Radius.circular(30),
                      progressColor: Colors.blue,
                    ),
                  ),
                ],
                          ),
                        ),
                      ),
              
              
              
                
                ],
                          ),
                        ),
                      ),
                    ),
              
              
              

              
                     SizedBox(width: 20,),
              
              
               Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width - 150,
                        height: 140,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.pink,
                  Colors.blue,
                ],
                          ),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 5,
                  spreadRadius: 2,
                ),
                          ],
                        ),
                        child: Center(
                          child: Column(
                children: [
              
                  Center(
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                children: [
                    
                  Text("Your Present 30% Complete", style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),),
              
                  
                SizedBox(height: 30,),
                    
                  Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: new LinearPercentIndicator(
                      width: 150,
                      animation: true,
                      lineHeight: 20.0,
                      animationDuration: 2500,
                      percent: 0.3,
                      center: Text("30.0%", style: TextStyle(color: Colors.white, fontSize: 15),),
                      
                      barRadius: Radius.circular(30),
                      progressColor: Colors.pink,
                    ),
                  ),
                ],
                          ),
                        ),
                      ),
              
              
              
                
                ],
                          ),
                        ),
                      ),
                    ),



                    
                     SizedBox(width: 20,),
              
              
               Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width - 150,
                        height: 140,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.pink,
                  Colors.blue,
                ],
                          ),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 5,
                  spreadRadius: 2,
                ),
                          ],
                        ),
                        child: Center(
                          child: Column(
                children: [
              
                  Center(
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                children: [
                    
                  Text("Your Absent 70% ", style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),),
              
                  
                SizedBox(height: 30,),
                    
                  Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: new LinearPercentIndicator(
                      width: 150,
                      animation: true,
                      lineHeight: 20.0,
                      animationDuration: 2500,
                      percent: 0.7,
                      center: Text("70.0%", style: TextStyle(color: Colors.white, fontSize: 15),),
                      
                      barRadius: Radius.circular(30),
                      progressColor: Colors.red,
                    ),
                  ),
                ],
                          ),
                        ),
                      ),
              
              
              
                
                ],
                          ),
                        ),
                      ),
                    ),
              
              
              
                ],  
                ),
              ),


// row end




    Padding(
      padding: const EdgeInsets.all(8.0),
      child: StepProgressIndicator(
      totalSteps: 15,
      currentStep: 12,
      size: 20,
      selectedColor: Colors.pink,
      unselectedColor: Colors.black,
      roundedEdges: Radius.circular(10),
      gradientColor: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.pink, Colors.white],
      ),
    ),
    ),

 SizedBox(height: 40,),

//  Container(
//   child: Text("Latest class", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
//  )

     Container(
                width: 250,
                child: TextButton(
                  onPressed: () {

                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => OurClass()));

                  },
                  child: Text(
                    "Go to Classroom",
                    style: TextStyle(color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.red)
                        )
                      ),
                    
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.pink),
                  ),
                ),
              ),



              // SizedBox(height: 20,),

                 Lottie.network(
                'https://assets8.lottiefiles.com/private_files/lf30_imyUMa.json',
                width: MediaQuery.of(context).size.width - 50,
                height: 200,
              ),


      
      

            ],
          ),
        ),
      ),









       backgroundColor: Colors.white,
       bottomNavigationBar: GNav(
        
  rippleColor: Colors.grey, // tab button ripple color when pressed
  hoverColor: Colors.pink, // tab button hover color
  haptic: true, // haptic feedback
  tabBorderRadius: 15, 
  tabActiveBorder: Border.all(color: Colors.black, width: 1), // tab button border
  tabBorder: Border.all(color: Colors.pink, width: 1), // tab button border
  tabShadow: [BoxShadow(color: Colors.white.withOpacity(0.5), blurRadius: 8)], // tab button shadow
  curve: Curves.easeOutExpo, // tab animation curves
  duration: Duration(milliseconds: 900), // tab animation duration
  gap: 8, // the tab button gap between icon and text 
  color: Colors.grey[800], // unselected icon color
  activeColor: Colors.pink, // selected icon and text color
  iconSize: 24, // tab button icon size
  tabBackgroundColor: Colors.pink.withOpacity(0.1), // selected tab background color
  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5), // navigation bar padding
  tabs: [
    GButton(
      icon: Icons.home,
      text: 'Home',
    ),
    GButton(
      icon: Icons.video_file,
      text: 'Class',
    ),
    GButton(
      icon: Icons.search,
      text: 'Search',
    ),
    GButton(
      icon: Icons.abc,
      text: 'abc',
    )
  ]
),

     





      
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.pink),
      
        title: const Text("Home", style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        
      ),

      // Drawer section 
    drawer: Drawer(
      child: ListView(children: [
        UserAccountsDrawerHeader(
              accountName: Text("Mahadi Hasan"),
              accountEmail: Text("royal@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/7656336/pexels-photo-7656336.jpeg?auto=compress&cs=tinysrgb&w=1600"),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              
            ),


            
        ListTile(title: Text("Your Class"),leading: Icon(Icons.video_library_outlined, color: Colors.pink,size: 30.0,),

          onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => OurClass()));
        },
        
        
        ),
        Divider(height: 3,thickness: 2,),

       
        ListTile(title: Text("Lecture PDF"),leading: Icon(Icons.picture_as_pdf, color: Colors.pink,size: 30.0,),
        
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => LecturePDF(pdfUrl: 'https://drive.google.com/file/d/1C5iYfIYxFNa58MLZj92Csp18l41iAFf3/view?usp=share_link',)));
        },
        
        ),
        Divider(height: 3,thickness: 2,),
        ListTile(title: Text("Your Problems"),leading: Icon(Icons.help_outline, color: Colors.pink,size: 30.0,),
        
        
        ),
        Divider(height: 3,thickness: 2,),
        ListTile(title: Text("Exams"),leading: Icon(Icons.question_answer, color: Colors.pink,size: 30.0,),
        
        
        ),
        Divider(height: 3,thickness: 2,),
        ListTile(title: Text("Your Results"),leading: Icon(Icons.task, color: Colors.pink,size: 30.0,),
        
        
        ),
        Divider(height: 3,thickness: 2,),



        ListTile(title: Text("All Results"),leading: Icon(Icons.task, color: Colors.pink,size: 30.0,),
        
           onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Results()));
        },
        
        ),
        Divider(height: 3,thickness: 2,),
        ListTile(title: Text("Payment"),leading: Icon(Icons.payment, color: Colors.pink,size: 30.0,),
        
        
        
        ),
        Divider(height: 3,thickness: 2,),
        ListTile(title: Text("Your Profile"),leading: Icon(Icons.person, color: Colors.pink,size: 30.0,),
        
        
        ),

        Divider(height: 3,thickness: 2,),
        ListTile(title: Text("AllStudent"),leading: Icon(Icons.person, color: Colors.pink,size: 30.0,),

        
           onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => AllNewStudent()));
        },
        
        
        ),

        Divider(height: 3,thickness: 2,),
        ListTile(title: Text("Payment Receive"),leading: Icon(Icons.person, color: Colors.pink,size: 30.0,),

        
           onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => PaymentRcvScreen()));
        },
        
        
        ),




        Divider(height: 3,thickness: 2,),
        ListTile(title: Text("Settings"),leading: Icon(Icons.settings, color: Colors.pink,size: 30.0,),
        
        
        ),
        Divider(height: 3,thickness: 2,),
      ]),
     
    ), 








    );
  }
}


List<StudentInfo> getStudentInfo() {
    final List<StudentInfo> studentTotalInfo = [
      StudentInfo("Attendance", 45),
      StudentInfo("Assignment Marks", 35),
      StudentInfo("Exam Marks", 35),
      StudentInfo("Ontime Class Complete", 45),
      StudentInfo("Social Media Usage", 35),
      
     
      
      
    ];

    return studentTotalInfo;
  }


class StudentInfo {
  final String name;
  // late double assignmentMarks;
  final double number;

  StudentInfo(this.name, this.number);
}




