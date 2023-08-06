import 'package:flutter/material.dart';

class PerClassVideo extends StatefulWidget {
  const PerClassVideo({super.key});

  @override
  State<PerClassVideo> createState() => _PerClassVideoState();
}

class _PerClassVideoState extends State<PerClassVideo> {
  List AllClassInfo = [
    {
      "ClassTitle": "লেকচার - ১",
      "ClassName": "8",
      "SubjectName": "Physics",
      "VideoUploadTime": "01/02/2023 10:12AM",
      "ClassNoteLink":
          "https://drive.google.com/file/d/1C5iYfIYxFNa58MLZj92Csp18l41iAFf3/view?usp=share_link",
      "VideoDuration": "10",
      "VideoID": "8aW7NqTFhV8"
    },
    {
      "ClassTitle": "লেকচার - ১",
      "ClassName": "8",
      "SubjectName": "Physics",
      "VideoUploadTime": "01/02/2023 10:12AM",
      "ClassNoteLink":
          "https://drive.google.com/file/d/1C5iYfIYxFNa58MLZj92Csp18l41iAFf3/view?usp=share_link",
      "VideoDuration": "10",
      "VideoID": "8aW7NqTFhV8"
    },
    {
      "ClassTitle": "লেকচার - ১",
      "ClassName": "8",
      "SubjectName": "Physics",
      "VideoUploadTime": "01/02/2023 10:12AM",
      "ClassNoteLink":
          "https://drive.google.com/file/d/1C5iYfIYxFNa58MLZj92Csp18l41iAFf3/view?usp=share_link",
      "VideoDuration": "10",
      "VideoID": "8aW7NqTFhV8"
    },
    {
      "ClassTitle": "লেকচার - ১",
      "ClassName": "8",
      "SubjectName": "Physics",
      "VideoUploadTime": "01/02/2023 10:12AM",
      "ClassNoteLink":
          "https://drive.google.com/file/d/1C5iYfIYxFNa58MLZj92Csp18l41iAFf3/view?usp=share_link",
      "VideoDuration": "10",
      "VideoID": "8aW7NqTFhV8"
    },
    {
      "ClassTitle": "লেকচার - ১",
      "ClassName": "8",
      "SubjectName": "Physics",
      "VideoUploadTime": "01/02/2023 10:12AM",
      "ClassNoteLink":
          "https://drive.google.com/file/d/1C5iYfIYxFNa58MLZj92Csp18l41iAFf3/view?usp=share_link",
      "VideoDuration": "10",
      "VideoID": "8aW7NqTFhV8"
    },
    {
      "ClassTitle": "লেকচার - ১",
      "ClassName": "8",
      "SubjectName": "Physics",
      "VideoUploadTime": "01/02/2023 10:12AM",
      "ClassNoteLink":
          "https://drive.google.com/file/d/1C5iYfIYxFNa58MLZj92Csp18l41iAFf3/view?usp=share_link",
      "VideoDuration": "10",
      "VideoID": "8aW7NqTFhV8"
    },
    {
      "ClassTitle": "লেকচার - ১",
      "ClassName": "8",
      "SubjectName": "Physics",
      "VideoUploadTime": "01/02/2023 10:12AM",
      "ClassNoteLink":
          "https://drive.google.com/file/d/1C5iYfIYxFNa58MLZj92Csp18l41iAFf3/view?usp=share_link",
      "VideoDuration": "10",
      "VideoID": "8aW7NqTFhV8"
    },
    {
      "ClassTitle": "লেকচার - ১",
      "ClassName": "8",
      "SubjectName": "Physics",
      "VideoUploadTime": "01/02/2023 10:12AM",
      "ClassNoteLink":
          "https://drive.google.com/file/d/1C5iYfIYxFNa58MLZj92Csp18l41iAFf3/view?usp=share_link",
      "VideoDuration": "10",
      "VideoID": "8aW7NqTFhV8"
    },
    {
      "ClassTitle": "লেকচার - ১",
      "ClassName": "8",
      "SubjectName": "Physics",
      "VideoUploadTime": "01/02/2023 10:12AM",
      "ClassNoteLink":
          "https://drive.google.com/file/d/1C5iYfIYxFNa58MLZj92Csp18l41iAFf3/view?usp=share_link",
      "VideoDuration": "10",
      "VideoID": "8aW7NqTFhV8"
    },
    {
      "ClassTitle": "লেকচার - ১",
      "ClassName": "8",
      "SubjectName": "Physics",
      "VideoUploadTime": "01/02/2023 10:12AM",
      "ClassNoteLink":
          "https://drive.google.com/file/d/1C5iYfIYxFNa58MLZj92Csp18l41iAFf3/view?usp=share_link",
      "VideoDuration": "10",
      "VideoID": "8aW7NqTFhV8"
    },
  ];

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
            "All Video",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          bottomOpacity: 0.0,
          elevation: 0.0,
        ),

        floatingActionButton: FloatingActionButton(onPressed: (){


        },
        
        child: Icon(Icons.upload_file, color: Colors.white,),
        backgroundColor: Colors.pink,
        
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              for (var item in AllClassInfo)
                Card(
                    child: Padding(
                        padding: EdgeInsets.only(
                            top: 16.0, left: 6.0, right: 6.0, bottom: 6.0),
                        child: Theme(
                            data: Theme.of(context)
                                .copyWith(dividerColor: Colors.transparent),
                            child: ExpansionTile(
                                leading: Icon(
                                  Icons.live_tv,
                                  color: Colors.pink,
                                  size: 40,
                                ),
                                subtitle: Row(
                                  children: [
                                    Text(
                                      '${item["SubjectName"]}',
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 48, 2, 56),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '${item["VideoUploadTime"]}',
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 48, 2, 56),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Class: ${item["ClassName"]}',
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 48, 2, 56),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                                title: Text(
                                  '${item["ClassTitle"]}',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 48, 2, 56),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                children: <Widget>[
                                  //Expandable inner part

                                  ListTile(
                                    leading: Icon(
                                      Icons.video_file_rounded,
                                      color: Colors.pink,
                                    ),
                                    trailing: TextButton(
                                      onPressed: () {},
                                      child: Text("Video",
                                          style:
                                              TextStyle(color: Colors.white)),
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll<Color>(
                                                Colors.pink),
                                      ),
                                    ),
                                    title: Text("${item["ClassTitle"]}",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  SizedBox(
                                    width: 20,
                                    height: 2,
                                  ),

                                  ListTile(
                                    leading:
                                        Icon(Icons.note, color: Colors.pink),
                                    trailing: TextButton(
                                      onPressed: () {},
                                      child: Text("Note",
                                          style: TextStyle(
                                            color: Colors.white,
                                          )),
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll<Color>(
                                                Colors.pink),
                                      ),
                                    ),
                                    title: Text(
                                      " ${item["ClassTitle"]} এর নোট",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                    height: 2,
                                  ),

                                  ListTile(
                                    leading: Icon(
                                      Icons.video_file_rounded,
                                      color: Colors.pink,
                                    ),
                                    trailing: TextButton(
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            builder: (context) =>
                                                AlertDialog(

                                                  title: Text(
                                      "Are you sure?You want to delete this Video",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),

                                    content: Text("আপনি যদি Video টি Delete করেন তবে এটি Server থেকে সম্পূর্ণভাবে Delete করে দেওয়া হবে। যদি Delete করতে না চান তবে Cancel Button এ Click করুন।"),

                                  actions: [

                                    TextButton(onPressed: (){

                                    }, child: Text("Cancle")),


                                     TextButton(onPressed: (){

                                    }, child: Text("Delete")),

                                  ],



                                                ));
                                      },
                                      child: Text("Delete Video",
                                          style:
                                              TextStyle(color: Colors.white)),
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll<Color>(
                                                Colors.red),
                                      ),
                                    ),
                                    title: Text("${item["ClassTitle"]}",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  SizedBox(
                                    width: 20,
                                    height: 2,
                                  ),

                                  ListTile(
                                    leading: Icon(
                                      Icons.question_mark,
                                      color: Colors.pink,
                                    ),
                                    trailing: TextButton(
                                      onPressed: () {},
                                      child: Text("All Student Question",
                                          style: TextStyle(
                                            color: Colors.white,
                                          )),
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll<Color>(
                                                Colors.pink),
                                      ),
                                    ),
                                    title: Text(
                                      "Problems",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                    height: 2,
                                  ),
                                ])))),
            ],
          ),
        )));
  }
}
