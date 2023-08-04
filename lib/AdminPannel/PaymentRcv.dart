import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_ui_toolkit/flutter_ui_toolkit.dart';
import 'package:lottie/lottie.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class PaymentRcvScreen extends StatefulWidget {
  const PaymentRcvScreen({super.key});

  @override
  State<PaymentRcvScreen> createState() => _PaymentRcvScreenState();
}

class _PaymentRcvScreenState extends State<PaymentRcvScreen> {
  TextEditingController myEmailController = TextEditingController();
  TextEditingController myPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    FocusNode myFocusNode = new FocusNode();

    // date pick 

    void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
      // TODO: implement your code here

      dynamic value = args.value;
      
      print(value);
    }

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
          "Recive Payment",
          style: TextStyle(color: Colors.black),
        ),
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
              Lottie.network(
                'https://assets8.lottiefiles.com/packages/lf20_7Ht9wn.json',
                width: 700,
                height: 200,
              ),
              TextField(
                focusNode: myFocusNode,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Student Name',
                  labelStyle: TextStyle(
                      color: myFocusNode.hasFocus ? Colors.pink : Colors.black),
                  hintText: 'Student Name',

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
                  labelText: 'Student ID',
                  labelStyle: TextStyle(
                      color: myFocusNode.hasFocus ? Colors.pink : Colors.black),
                  hintText: 'Student ID',
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
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Amount',
                  labelStyle: TextStyle(
                      color: myFocusNode.hasFocus ? Colors.pink : Colors.black),
                  hintText: 'Amount',
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
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Student Phone Number',
                  labelStyle: TextStyle(
                      color: myFocusNode.hasFocus ? Colors.pink : Colors.black),
                  hintText: 'Student Phone Number',
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


              Container(
                child: Text("Pick Payment Date"),
              ),

               SizedBox(
                height: 10,
              ),




              Container(
                child: SfDateRangePicker(
                  onSelectionChanged: _onSelectionChanged,
                  selectionMode: DateRangePickerSelectionMode.range,
                  todayHighlightColor: Colors.pink,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 150,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Submit",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.pink),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
