import 'package:budgetcal/Models/Budgetcal/isar_service.dart';
import 'package:flutter/material.dart';
import 'package:budgetcal/BudgetCalculatorScreens/eventselectionpage.dart';
import 'package:hive_flutter/hive_flutter.dart';
// Use the selectedEvent value here or pass it to another function

// ignore: must_be_immutable

class CategoryChosingPage extends StatefulWidget {
  CategoryChosingPage({
    Key? key,
  }) : super(key: key);

  @override

  // ignore: library_private_types_in_public_api, no_logic_in_create_state
  _CategoryChosingPageState createState() =>
      // ignore: no_logic_in_create_state
      _CategoryChosingPageState();
}

class _CategoryChosingPageState extends State<CategoryChosingPage> {
  _CategoryChosingPageState();
  var categoryValue;

  @override
  Widget build(BuildContext context) {
    // final eventName = args['eventName'];

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '',
          style: const TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Navigator.pushNamed(context, './EventselectionPage');
          },
        ),
        backgroundColor: Colors.teal,
        toolbarHeight: 90,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Container(
            color: Colors.grey.shade900,
            width: width * 0.8,
            child: DropdownButtonFormField<String>(
              //  value: categoryValue,
              onChanged: (String? newValue) {
                setState(() {
                  categoryValue = newValue;
                });
                // box.put('category_value', categoryValue);
              },

              items: <String>[
                'Decoration',
                'Food and Beverages',
                'Option 3',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: SizedBox(
                    width: 290, // Customizing the width of the DropdownMenuItem
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
                'Add Category',
                style: TextStyle(color: Colors.white),
                //textAlign: Align(alignment: Alignment.center,),
              ),
              icon: const Icon(
                Icons.arrow_drop_down,
                color: Colors.white,
              ),
              decoration: InputDecoration(
                // labelText: "Event Name",
                // ignore:prefer_const_constructors
                prefixIcon: Icon(
                  Icons.accessibility_new_rounded,
                  color: Colors.purple,
                ),
                // ignore:prefer_const_constructors
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              ),
              focusColor: Colors.grey, // Customizing dropdown button text style
              dropdownColor: Colors.grey,
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.teal,
        height: 90,
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ElevatedButton(
                onPressed: () => {
                  Navigator.of(context).pop(EventSelectionPage()),
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent,
                  minimumSize: Size(100, 50),
                  // Background color
                ),
                child: const Text(
                  'Cancel',
                  style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                ),

                // style: ButtonStyle(backgroundColor:Colors ),
              ),
              ElevatedButton(
                  onPressed: () => {
                        Navigator.pushNamed(
                          context,
                          './CategoryShownPage',
                        ),
                        // box.put('category_value', categoryValue),
                      },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent,
                    minimumSize: Size(100, 50),
                    // Background color
                  ),
                  child: const Text('Save',
                      style: TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.bold)))
            ],
          ),
        ),
      ),
    );
  }
}
