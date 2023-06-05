import 'package:flutter/material.dart';

class TaskAddingPage extends StatefulWidget {
  const TaskAddingPage({super.key});

  @override
  State<TaskAddingPage> createState() => _TaskAddingPageState();
}

class _TaskAddingPageState extends State<TaskAddingPage> {
  @override
  String? Budgetoption;
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 80),
        child: Center(
          child: Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                child: Text(
                  "Add Sub Task",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                width: width * 0.8,
                color: Colors.grey.shade900,
                child: TextField(
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                child: Text('Add Vendor',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                color: Colors.grey.shade900,
                width: width * 0.8,
                child: TextField(
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                    hintText: "",
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Container(
                color: Colors.grey.shade900,
                width: width * 0.8,
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey,
                    // ignore:prefer_const_constructors
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  focusColor: Colors.grey,
                  // Customizing dropdown button text style
                  dropdownColor: Colors.grey,
                  elevation: 0,
                  onChanged: (String? newval) {
                    setState(() {
                      Budgetoption = newval;
                    });
                    if (newval == 'Normal') {
                      Navigator.pushNamed(context, './NormalBudgetOptionPage');
                    } else if (newval == 'Advance') {
                      Navigator.pushNamed(context, './AdvanceBudgetOptionPage');
                    }
                  },
                  alignment: Alignment.center,
                  items: <String>[
                    "Normal",
                    "Advance",
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: SizedBox(
                        width: width *
                            0.8, // Customizing the width of the DropdownMenuItem
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
                    'Budget Option',
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
          ]),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, './CategoryShownPage');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent,
                  minimumSize: Size(100, 50),
                ),
                child: const Text(
                  'Save',
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
                    './CategoryShownPage',
                  );
                  // ignore: use_build_context_synchronously
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent,
                  minimumSize: Size(100, 50),
                ),
                child: const Text(
                  'Cancel',
                  style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
