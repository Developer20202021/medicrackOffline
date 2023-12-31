import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    bool isSwitched = false;
    var textValue = 'Switch is OFF';

    void toggleSwitch(bool value) {
      if (isSwitched == false) {
        setState(() {
          isSwitched = true;
          textValue = 'Switch Button is ON';
        });
        print('Switch Button is ON');
      } else {
        setState(() {
          isSwitched = false;
          textValue = 'Switch Button is OFF';
        });
        print('Switch Button is OFF');
      }
    }

    List OneStudentProfileInformation = [

      {"FristName":"Mahadi Hasan",
      "lastName":"Mahadi Hasan",
      "FatherName":"Mahadi Hasan",
      "MotherName":"Mahadi Hasan",
      "DateOfBirth":"Mahadi Hasan",
      "StudentIDNumber":"Mahadi Hasan",
      "EmailAddress":"Mahadi Hasan",
      "ClassName":"Mahadi Hasan",
      "Gender":"Mahadi Hasan",
      "PhoneNumber":"Mahadi Hasan",
      "ParentPhoneNumber":"Mahadi Hasan",
      "BloodGroup":"Mahadi Hasan",
      "FatherNID":"Mahadi Hasan",
      "ParmanentAddress":"Mahadi Hasan",
      "PresentAddress":"Mahadi Hasan",
      
      }

    ];

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.pink),
          leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(Icons.chevron_left)),
          title: const Center(
            child: Text(
              "Profile",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          actions: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Wrap(
                            children: [
                              ListTile(
                                leading: Icon(
                                  Icons.share,
                                  color: Colors.pink,
                                ),
                                title: Text('Share'),
                                trailing: Container(
                                  width: 100,
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Share",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStatePropertyAll<Color>(
                                              Colors.pink),
                                    ),
                                  ),
                                ),
                              ),
                              // Switch(
                              //     // thumb color (round icon)
                              //       activeColor: Colors.blue,
                              //       activeTrackColor: Colors.yellow,
                              //       inactiveThumbColor: Colors.redAccent,
                              //       inactiveTrackColor: Colors.orange,
                              //     // boolean variable value
                              //     value: isSwitched,
                              //     // changes the state of the switch
                              //     onChanged: toggleSwitch, ),

                              ListTile(
                                leading: Icon(
                                  Icons.dark_mode,
                                  color: Colors.pink,
                                ),
                                title: Text('Dark Mode'),
                                trailing: Switch(
                                  // thumb color (round icon)
                                  activeColor: Colors.pink,
                                  activeTrackColor: Colors.grey,
                                  inactiveThumbColor: Colors.green,
                                  inactiveTrackColor: Colors.white,
                                  // boolean variable value
                                  value: isSwitched,
                                  // changes the state of the switch
                                  onChanged: toggleSwitch,
                                ),
                              ),

                              ListTile(
                                leading: Icon(
                                  Icons.edit,
                                  color: Colors.pink,
                                ),
                                title: Text('Edit Profile'),
                                trailing: Container(
                                  width: 100,
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Edit",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStatePropertyAll<Color>(
                                              Colors.pink),
                                    ),
                                  ),
                                ),
                              ),

                              ListTile(
                                leading: Icon(
                                  Icons.change_circle,
                                  color: Colors.pink,
                                ),
                                title: Text('Change Theme'),
                                trailing: Container(
                                  width: 100,
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Change",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStatePropertyAll<Color>(
                                              Colors.pink),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        });
                  },
                  icon: Icon(Icons.settings),
                  color: Colors.pink,
                ))
          ],
          backgroundColor: Colors.transparent,
          bottomOpacity: 0.0,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 70,
                        backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80",
                        ),
                      ),
                      Center(
                        child: Text(
                          "Mahadi Hasan ",
                          style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "mahadihasan@gmail.com",
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Presence: 50% ",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 131, 90, 7),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Connection: 230 ",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 131, 90, 7),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  //Information
                  Card(
                      child: Padding(
                          padding: EdgeInsets.only(
                              top: 16.0, left: 6.0, right: 6.0, bottom: 6.0),
                          child: Theme(
                              data: Theme.of(context)
                                  .copyWith(dividerColor: Colors.transparent),
                              child: ExpansionTile(
                                leading: Icon(
                                  Icons.info,
                                  color: Colors.pink,
                                  size: 30,
                                ),
                                title: Text(
                                  "Information",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 48, 2, 56),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),

                                  // Name Section


      //                              {"FristName":"Mahadi Hasan",
                                        // "lastName":"Mahadi Hasan",
                                        // "FatherName":"Mahadi Hasan",
                                        // "MotherName":"Mahadi Hasan",
                                        // "DateOfBirth":"Mahadi Hasan",
                                        // "StudentIDNumber":"Mahadi Hasan",
                                        // "EmailAddress":"Mahadi Hasan",
                                        // "ClassName":"Mahadi Hasan",
                                        // "Gender":"Mahadi Hasan",
                                        // "PhoneNumber":"Mahadi Hasan",
                                        // "ParentPhoneNumber":"Mahadi Hasan",
                                        // "BloodGroup":"Mahadi Hasan",
                                        // "FatherNID":"Mahadi Hasan",
                                        // "ParmanentAddress":"Mahadi Hasan",
                                        // "PresentAddress":"Mahadi Hasan",
                                        
                                        // }

                                 Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Text("Student ID Number: ${OneStudentProfileInformation[0]["StudentIDNumber"]}", style: TextStyle(fontSize: 16),),


                                     Text("Class: ${OneStudentProfileInformation[0]["ClassName"]}", style: TextStyle(fontSize: 16),),


                                  Text("First Name: ${OneStudentProfileInformation[0]["FristName"]}", style: TextStyle(fontSize: 16),),

                                  
                                  Text("Last Name: ${OneStudentProfileInformation[0]["lastName"]}", style: TextStyle(fontSize: 16),),

                                  
                                  Text("Father Name: ${OneStudentProfileInformation[0]["FatherName"]}", style: TextStyle(fontSize: 16),),

                                  
                                  Text("Mother Name: ${OneStudentProfileInformation[0]["MotherName"]}", style: TextStyle(fontSize: 16),),

                                  
                                  Text("Date Of Birth: ${OneStudentProfileInformation[0]["DateOfBirth"]}", style: TextStyle(fontSize: 16),),

                                  
                                  Text("Email Address: ${OneStudentProfileInformation[0]["EmailAddress"]}", style: TextStyle(fontSize: 16),),

                                  Text("Phone Number: ${OneStudentProfileInformation[0]["PhoneNumber"]}", style: TextStyle(fontSize: 16),),

                                  Text("Parmanent Address: ${OneStudentProfileInformation[0]["ParmanentAddress"]}", style: TextStyle(fontSize: 16),),

                                  Text("Present Address: ${OneStudentProfileInformation[0]["PresentAddress"]}", style: TextStyle(fontSize: 16),),

                                  Text("Parent's Phone Number: ${OneStudentProfileInformation[0]["ParentPhoneNumber"]}", style: TextStyle(fontSize: 16),),

                                  Text("Gender: ${OneStudentProfileInformation[0]["Gender"]}", style: TextStyle(fontSize: 16),),

                                  Text("Blood Group: ${OneStudentProfileInformation[0]["BloodGroup"]}", style: TextStyle(fontSize: 16),),

                                  Text("Father NID: ${OneStudentProfileInformation[0]["FatherNID"]}", style: TextStyle(fontSize: 16),),

                                 



                                   ],
                                 ),

                                 

                              

                                  

                                  
                              

                                  SizedBox(
                                    height: 14,
                                  ),

                                 
                                ],
                              )))),

                  SizedBox(
                    height: 14,
                  ),

                  // Connect Friend
                  Card(
                      child: Padding(
                          padding: EdgeInsets.only(
                              top: 16.0, left: 6.0, right: 6.0, bottom: 6.0),
                          child: Theme(
                              data: Theme.of(context)
                                  .copyWith(dividerColor: Colors.transparent),
                              child: ExpansionTile(
                                  leading: Icon(
                                    Icons.share,
                                    color: Colors.pink,
                                    size: 30,
                                  ),
                                  title: Text(
                                    "Connect Friend",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 48, 2, 56),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ))))),

                  SizedBox(
                    height: 14,
                  ),

                  // get Membership
                  Card(
                      child: Padding(
                          padding: EdgeInsets.only(
                              top: 16.0, left: 6.0, right: 6.0, bottom: 6.0),
                          child: Theme(
                              data: Theme.of(context)
                                  .copyWith(dividerColor: Colors.transparent),
                              child: ExpansionTile(
                                leading: Icon(
                                  Icons.card_membership,
                                  color: Colors.pink,
                                  size: 30,
                                ),
                                title: Text(
                                  "Get Membership",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 48, 2, 56),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                children: [
                                  SizedBox(
                                    height: 14,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        width: 150,
                                        child: TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Send Your Profile",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStatePropertyAll<Color>(
                                                    Colors.pink),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )))),

                  SizedBox(
                    height: 14,
                  ),

                  // Earn points
                  Card(
                      child: Padding(
                          padding: EdgeInsets.only(
                              top: 16.0, left: 6.0, right: 6.0, bottom: 6.0),
                          child: Theme(
                              data: Theme.of(context)
                                  .copyWith(dividerColor: Colors.transparent),
                              child: ExpansionTile(
                                leading: Icon(
                                  Icons.attach_money,
                                  color: Colors.pink,
                                  size: 30,
                                ),
                                title: Text(
                                  "Earn Points",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 48, 2, 56),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              )))),

                  SizedBox(
                    height: 14,
                  ),

                  // Change Address
                  Card(
                      child: Padding(
                          padding: EdgeInsets.only(
                              top: 16.0, left: 6.0, right: 6.0, bottom: 6.0),
                          child: Theme(
                              data: Theme.of(context)
                                  .copyWith(dividerColor: Colors.transparent),
                              child: ExpansionTile(
                                leading: Icon(
                                  Icons.location_on,
                                  color: Colors.pink,
                                  size: 30,
                                ),
                                title: Text(
                                  "Change Address",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 48, 2, 56),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                children: [
                                  SizedBox(
                                    height: 14,
                                  ),

                                  // Change Address Section
                                  TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Enter New Address',

                                      hintText: 'Enter New Address',

                                      //  enabledBorder: OutlineInputBorder(
                                      //       borderSide: BorderSide(width: 3, color: Colors.greenAccent),
                                      //     ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 3, color: Colors.pink),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 3,
                                            color: Color.fromARGB(
                                                255, 66, 125, 145)),
                                      ),
                                    ),
                                  ),

                                  SizedBox(
                                    height: 14,
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        width: 150,
                                        child: TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Save",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStatePropertyAll<Color>(
                                                    Colors.pink),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )))),

                  SizedBox(
                    height: 14,
                  ),

                  // Settings
                  Card(
                      child: Padding(
                          padding: EdgeInsets.only(
                              top: 16.0, left: 6.0, right: 6.0, bottom: 6.0),
                          child: Theme(
                              data: Theme.of(context)
                                  .copyWith(dividerColor: Colors.transparent),
                              child: ExpansionTile(
                                  leading: Icon(
                                    Icons.settings,
                                    color: Colors.pink,
                                    size: 30,
                                  ),
                                  title: Text(
                                    "Settings",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 48, 2, 56),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ))))),

                  SizedBox(
                    height: 14,
                  ),

                  // Help & Support
                  Card(
                      child: Padding(
                          padding: EdgeInsets.only(
                              top: 16.0, left: 6.0, right: 6.0, bottom: 6.0),
                          child: Theme(
                              data: Theme.of(context)
                                  .copyWith(dividerColor: Colors.transparent),
                              child: ExpansionTile(
                                leading: Icon(
                                  Icons.contact_support,
                                  color: Colors.pink,
                                  size: 30,
                                ),
                                title: Text(
                                  "Help & Support",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 48, 2, 56),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                children: [
                                  SizedBox(
                                    height: 14,
                                  ),
                                  // Name Section
                                  TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Name',

                                      hintText: 'Your Name',

                                      //  enabledBorder: OutlineInputBorder(
                                      //       borderSide: BorderSide(width: 3, color: Colors.greenAccent),
                                      //     ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 3, color: Colors.pink),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 3,
                                            color: Color.fromARGB(
                                                255, 66, 125, 145)),
                                      ),
                                    ),
                                  ),

                                  SizedBox(
                                    height: 14,
                                  ),
                                  // Email Section
                                  TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Email',

                                      hintText: 'Email',

                                      //  enabledBorder: OutlineInputBorder(
                                      //       borderSide: BorderSide(width: 3, color: Colors.greenAccent),
                                      //     ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 3, color: Colors.pink),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 3,
                                            color: Color.fromARGB(
                                                255, 66, 125, 145)),
                                      ),
                                    ),
                                  ),

                                  SizedBox(
                                    height: 14,
                                  ),

                                  // Name Section
                                  TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Write Problem',

                                      hintText: 'Write Problem',

                                      //  enabledBorder: OutlineInputBorder(
                                      //       borderSide: BorderSide(width: 3, color: Colors.greenAccent),
                                      //     ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 3, color: Colors.pink),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 3,
                                            color: Color.fromARGB(
                                                255, 66, 125, 145)),
                                      ),
                                    ),
                                    keyboardType: TextInputType.multiline,
                                    minLines: 1,
                                    maxLines: 5,
                                  ),

                                  SizedBox(
                                    height: 14,
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        width: 150,
                                        child: TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Submit",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStatePropertyAll<Color>(
                                                    Colors.pink),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )))),
                ]))));
  }
}

// class CustomClipPath extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     double w = size.width;
//     double h = size.height;
//     final path = Path();
//     path.lineTo(0, h);
//     path.quadraticBezierTo(w * 0.5, h - 700, w, h);

//     path.lineTo(w, 0);

//     path.close();

//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) {
//     return true;
//   }

// }

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.pink;
    paint.style = PaintingStyle.fill; // Change this to fill

    var path = Path();

    path.moveTo(0, size.height * 0.75);
    path.quadraticBezierTo(
        size.width / 2, size.height / 2, size.width, size.height * 0.75);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
