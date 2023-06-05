import 'package:budgetcal/Models/Budgetcal/eventset.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
// ignore: must_be_immutable

class EventSelectionPage extends StatefulWidget {
  EventSelectionPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _EventSelectionPageState createState() => _EventSelectionPageState();
}

class _EventSelectionPageState extends State<EventSelectionPage> {
  // ignore: avoid_init_to_null
  // String? selectedValue = null;

  final List<Eventset> events = [];

  String? eventName;
  @override
  void dispose() {
    Hive.box('events').close();

    super.dispose();
  }

  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        toolbarHeight: 90,
        title: const Text(
          'Budget Calculator',
          style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () {},
        ),
      ),
      body: Column(
        children: <Widget>[
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 120),
            // ignore: prefer_const_constructors
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              // ignore: prefer_const_constructors
              child: Container(
                width: width * 0.8,
                color: Colors.grey.shade900,
                child: TextField(
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                    // ignore: prefer_const_constructors
                    border: OutlineInputBorder(
                      // ignore: prefer_const_constructors
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    fillColor: Colors.grey,
                    prefixIcon: const Icon(Icons.calculate),
                    hintText: 'Target Budget',
                    hintStyle: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    // hoverColor: const Color.fromARGB(222, 2, 2, 2),
                  ),
                  keyboardType: TextInputType.number,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                  cursorColor: const Color.fromARGB(255, 0, 255, 13),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 0),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
              // ignore: avoid_unnecessary_containers
              child: Center(
                child: Container(
                  width: width * 0.8,
                  color: Colors.grey.shade900,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    reverse: true,
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.accessibility_new_rounded,
                          color: Colors.purple,
                        ),
                        // ignore:prefer_const_constructors
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      focusColor:
                          Colors.grey, // Customizing dropdown button text style
                      dropdownColor: Colors.grey,
                      value: eventName,
                      elevation: 0,
                      onChanged: (String? newval) {
                        setState(() {
                          eventName = newval;
                        });
                      },
                      items: <String>[
                        "Wedding",
                        "Big Girl Party",
                        "Get to gethor",
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: SizedBox(
                            width:
                                290, // Customizing the width of the DropdownMenuItem
                            height:
                                60, // Customizing the height of the DropdownMenuItem
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(value,
                                  // ignore: prefer_const_constructors
                                  style: TextStyle(color: Colors.white)),
                            ),
                          ),
                        );
                      }).toList(),
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                      isExpanded: true,
                      hint: const Text(
                        'Event Name',
                        style: TextStyle(color: Colors.white),
                        //textAlign: Align(alignment: Alignment.center,),
                      ),
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.teal,
        height: 90,
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent,
                  minimumSize: Size(100, 50),
                ),
                child: const Text(
                  'Back',
                  style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                ),
              ),
              ElevatedButton(
                onPressed: () async {
//                   final isarService = IsarService();

// // Call the saveEvent method on the instance
//                   await isarService.saveEvent(eventName as EventSelectionModel);
                  Navigator.pushNamed(
                    context,
                    './CategoryChoosingPage',
                  );
                  // ignore: use_build_context_synchronously
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent,
                  minimumSize: Size(100, 50),
                ),
                child: const Text(
                  'Next',
                  style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

      Future<dynamic> addEvent(String eventName) {
      final event = Eventset();

      ..evntName=eventName;

      setState(() =>
      events.add(event);
      
      );
  
}
}
