import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:the_royal_academy/AdminPannel/PaymentRcv.dart';
import 'package:the_royal_academy/AdminPannel/PerStudentAttendance.dart';

class AllNewStudent extends StatefulWidget {
  const AllNewStudent({super.key});

  @override
  State<AllNewStudent> createState() => _AllNewStudentState();
}

class _AllNewStudentState extends State<AllNewStudent> {
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
          "All Student",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: ListView.separated(
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemBuilder: (BuildContext context, int index) {
          return Slidable(
            // Specify a key if the Slidable is dismissible.
            key: const ValueKey(0),

            // The start action pane is the one at the left or the top side.
            startActionPane: ActionPane(
              // A motion is a widget used to control how the pane animates.
              motion: const ScrollMotion(),

              // A pane can dismiss the Slidable.
              dismissible: DismissiblePane(onDismissed: () {}),

              // All actions are defined in the children parameter.
              children: const [
                // A SlidableAction can have an icon and/or a label.
                SlidableAction(
                  onPressed: doNothing,
                  backgroundColor: Color(0xFFFE4A49),
                  foregroundColor: Colors.white,
                  icon: Icons.delete,
                  label: 'Delete',
                ),
                SlidableAction(
                  onPressed: doNothing,
                  backgroundColor: Color(0xFF21B7CA),
                  foregroundColor: Colors.white,
                  icon: Icons.info,
                  label: 'All Info',
                ),
              ],
            ),

            // The end action pane is the one at the right or the bottom side.
            endActionPane: const ActionPane(
              motion: ScrollMotion(),
              children: [
                SlidableAction(
                  // An action can be bigger than the others.
                  flex: 2,
                  onPressed: addPayment,
                  backgroundColor: Color(0xFF7BC043),
                  foregroundColor: Colors.white,
                  icon: Icons.payment,
                  label: 'Payment',
                ),
                SlidableAction(
                  onPressed: seeAttendance,
                  backgroundColor: Color(0xFF0392CF),
                  foregroundColor: Colors.white,
                  icon: Icons.save,
                  label: 'Attendance',
                ),
              ],
            ),

            // The child of the Slidable is what the user sees when the
            // component is not dragged.
            child: const ListTile(
              
                 leading: CircleAvatar(
        backgroundColor: Colors.pink,
        child: Text("S"),
      ),

      subtitle: Text('ID:89089'),
      trailing: Icon(Icons.block),
              
              title: Text('Mahadi Hasan', style: TextStyle(
                fontWeight: FontWeight.bold
              ),)),
          );
        },
        itemCount: 25,
      ),
    );
  }
}

void doNothing(BuildContext context) {}

void addPayment(BuildContext context){
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => PaymentRcvScreen()));
}


void seeAttendance(BuildContext context){
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => PerStudentAttendance()));
}