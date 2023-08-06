import 'dart:async';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_toolkit/flutter_ui_toolkit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:the_royal_academy/LecturePDF.dart';
import 'package:the_royal_academy/YourQuestion.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:expandable/expandable.dart';

class OurClass extends StatefulWidget {
  const OurClass({super.key});

  @override
  State<OurClass> createState() => _OurClassState();
}

class _OurClassState extends State<OurClass> {
  late YoutubePlayerController _controller;
  late PlayerState _playerState;
  late YoutubeMetaData _videoMetaData;
  double _volume = 100;
  bool _muted = false;
  bool _isPlayerReady = false;

  late Timer _timer;
  int _start = 10;

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: "6fIfwkVuhiI",
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: false,
        enableCaption: true,
      ),
    )..addListener(listener);

    _videoMetaData = const YoutubeMetaData();
    _playerState = PlayerState.unknown;
  }

  void listener() {
    if (_isPlayerReady && mounted && !_controller.value.isFullScreen) {
      setState(() {
        _playerState = _controller.value.playerState;
        _videoMetaData = _controller.metadata;
      });
    }
  }

  @override
  void deactivate() {
    // Pauses video while navigating to next page.
    _controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _timer.cancel();
    _controller.dispose();
    super.dispose();
  }

  List AllClassInfo = [

    {"ClassTitle":"লেকচার - ১",
    "ClassNoteLink":"https://drive.google.com/file/d/1C5iYfIYxFNa58MLZj92Csp18l41iAFf3/view?usp=share_link",
    "ClassTime":"10",
    "VideoID":"8aW7NqTFhV8"
    },

    {"ClassTitle":"লেকচার - ১",
    "ClassNoteLink":"https://drive.google.com/file/d/1C5iYfIYxFNa58MLZj92Csp18l41iAFf3/view?usp=share_link",
    "ClassTime":"10",
    "VideoID":"8aW7NqTFhV8"
    },

    {"ClassTitle":"লেকচার - ১",
    "ClassNoteLink":"https://drive.google.com/file/d/1C5iYfIYxFNa58MLZj92Csp18l41iAFf3/view?usp=share_link",
    "ClassTime":"10",
    "VideoID":"8aW7NqTFhV8"
    },

    {"ClassTitle":"লেকচার - ১",
    "ClassNoteLink":"https://drive.google.com/file/d/1C5iYfIYxFNa58MLZj92Csp18l41iAFf3/view?usp=share_link",
    "ClassTime":"10",
    "VideoID":"8aW7NqTFhV8"
    },

    {"ClassTitle":"লেকচার - ১",
    "ClassNoteLink":"https://drive.google.com/file/d/1C5iYfIYxFNa58MLZj92Csp18l41iAFf3/view?usp=share_link",
    "ClassTime":"10",
    "VideoID":"8aW7NqTFhV8"
    },

    {"ClassTitle":"লেকচার - ১",
    "ClassNoteLink":"https://drive.google.com/file/d/1C5iYfIYxFNa58MLZj92Csp18l41iAFf3/view?usp=share_link",
    "ClassTime":"10",
    "VideoID":"8aW7NqTFhV8"
    },

    {"ClassTitle":"লেকচার - ১",
    "ClassNoteLink":"https://drive.google.com/file/d/1C5iYfIYxFNa58MLZj92Csp18l41iAFf3/view?usp=share_link",
    "ClassTime":"10",
    "VideoID":"8aW7NqTFhV8"
    },

    {"ClassTitle":"লেকচার - ১",
    "ClassNoteLink":"https://drive.google.com/file/d/1C5iYfIYxFNa58MLZj92Csp18l41iAFf3/view?usp=share_link",
    "ClassTime":"10",
    "VideoID":"8aW7NqTFhV8"
    },

    {"ClassTitle":"লেকচার - ১",
    "ClassNoteLink":"https://drive.google.com/file/d/1C5iYfIYxFNa58MLZj92Csp18l41iAFf3/view?usp=share_link",
    "ClassTime":"10",
    "VideoID":"8aW7NqTFhV8"
    },

    {"ClassTitle":"লেকচার - ১",
    "ClassNoteLink":"https://drive.google.com/file/d/1C5iYfIYxFNa58MLZj92Csp18l41iAFf3/view?usp=share_link",
    "ClassTime":"10",
    "VideoID":"8aW7NqTFhV8"
    },

    {"ClassTitle":"লেকচার - ১",
    "ClassNoteLink":"https://drive.google.com/file/d/1C5iYfIYxFNa58MLZj92Csp18l41iAFf3/view?usp=share_link",
    "ClassTime":"10",
    "VideoID":"8aW7NqTFhV8"
    },

    {"ClassTitle":"লেকচার - ১",
    "ClassNoteLink":"https://drive.google.com/file/d/1C5iYfIYxFNa58MLZj92Csp18l41iAFf3/view?usp=share_link",
    "ClassTime":"10",
    "VideoID":"Jq9_Yn4KFZY"
    },

    {"ClassTitle":"লেকচার - ১",
    "ClassNoteLink":"https://drive.google.com/file/d/1C5iYfIYxFNa58MLZj92Csp18l41iAFf3/view?usp=share_link",
    "ClassTime":"10",
    "VideoID":"YchuLUKuR-4"
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
          "Your Class",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                YoutubePlayer(
                  controller: _controller,
                  actionsPadding: const EdgeInsets.only(left: 16.0),
                  bottomActions: [
                    CurrentPosition(),
                    const SizedBox(width: 10.0),
                    ProgressBar(isExpanded: true),
                    const SizedBox(width: 10.0),
                    RemainingDuration(),
                    FullScreenButton(),
                    PlaybackSpeedButton(),
                    PlayPauseButton()
                  ],
                ),
                ListTile(
                  trailing: Text("${_start}"),
                ),



        for(var classInfo in AllClassInfo)



                ExpandableNotifier(
                  // <-- Provides ExpandableController to its children
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        // every expandable widget
                        Card(
                            child: Padding(
                                padding: EdgeInsets.only(
                                    top: 16.0,
                                    left: 6.0,
                                    right: 6.0,
                                    bottom: 6.0),
                                child: Theme(
                                    data: Theme.of(context).copyWith(
                                        dividerColor: Colors.transparent),
                                    child: ExpansionTile(
                                        leading: Icon(
                                          Icons.live_tv,
                                          color: Colors.pink,
                                          size: 40,
                                        ),
                                        title: Text(
                                          '${classInfo["ClassTitle"]}',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 48, 2, 56),
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
                                              onPressed: () {
                                                _controller.load("${classInfo["VideoID"]}");
                                                _start = 10;
                                                startTimer();
                                              },
                                              child: Text("Class",
                                                  style: TextStyle(
                                                      color: Colors.white)),
                                              style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStatePropertyAll<
                                                        Color>(Colors.pink),
                                              ),
                                            ),
                                            title: Text("${classInfo["ClassTitle"]} এর ক্লাস",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                          SizedBox(
                                            width: 20,
                                            height: 2,
                                          ),
                                          ListTile(
                                            leading: Icon(Icons.note,
                                                color: Colors.pink),
                                            trailing: TextButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                           LecturePDF(
                                                            pdfUrl:
                                                                "${classInfo["ClassNoteLink"]}",
                                                          )),
                                                );
                                              },
                                              child: Text("Note",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  )),
                                              style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStatePropertyAll<
                                                        Color>(Colors.pink),
                                              ),
                                            ),
                                            title: Text(
                                              "${classInfo["ClassTitle"]} এর নোট",
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
                                              Icons.question_mark,
                                              color: Colors.pink,
                                            ),
                                            trailing: TextButton(
                                              onPressed: () {},
                                              child: Text("প্রশ্ন",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  )),
                                              style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStatePropertyAll<
                                                        Color>(Colors.pink),
                                              ),
                                            ),
                                            title: Text(
                                              "তোমার প্রশ্ন জানাও",
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
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
