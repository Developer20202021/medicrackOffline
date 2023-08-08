import 'package:flutter/material.dart';
import 'package:the_royal_academy/AdminPannel/AddNewAttendance.dart';
import 'package:the_royal_academy/AdminPannel/PaymentRcv.dart';

class StudentScanInfo extends StatelessWidget {
  final String StudentScanInformation;
  const StudentScanInfo({super.key,required this.StudentScanInformation});

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
            "Student Scan Information",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          bottomOpacity: 0.0,
          elevation: 0.0,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {

            Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  QRViewExample()),
                          );



          },
          child: Icon(
            Icons.qr_code,
            color: Colors.white,
          ),
          backgroundColor: Colors.pink,
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(10.0),
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
            child: Column(
              children: [



                Text(StudentScanInformation, style:TextStyle(fontSize: 16, fontWeight: FontWeight.bold) ,),
                
        
        
        
                
        
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


                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(builder: (context) => const AllNewStudent()),
                      //   );




                               },
                                                child: Text("See Profile",
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
                          MaterialPageRoute(builder: (context) => const PaymentRcvScreen()),
                        );
           },
                                                child: Text("Add Payment",
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
                                                child: Text("Presence",
                                                    style: TextStyle(
                                                        color: Colors.white)),
                                                style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStatePropertyAll<
                                                          Color>(Colors.green),
                                ),
                          ),
        
        
        
        
                    ],
        
        
                  ),
                  padding: const EdgeInsets.all(12),
                )
              ],
            ),
          ),















                

                  TextButton(onPressed: (){


                      Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  QRViewExample()),
                          );



                  }, child: Text("Scan New Information",style: TextStyle(
                                                      color: Colors.white)),
                  
                   style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStatePropertyAll<
                                                        Color>(Colors.pink),
                                              ),
                  
                  )



                ]))));
  }
}
