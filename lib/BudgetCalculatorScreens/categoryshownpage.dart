import 'package:flutter/material.dart';
import 'package:budgetcal/BudgetCalculatorScreens/eventselectionpage.dart';

class CategoryShownPage extends StatefulWidget {
  CategoryShownPage({
    Key? key,
  }) : super();

  @override
  // ignore: library_private_types_in_public_api
  _CategoryShownPageState createState() => _CategoryShownPageState();
}

class _CategoryShownPageState extends State<CategoryShownPage> {
  List<String> containers = [];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          '',
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Navigator.of(context).pop(EventSelectionPage());
          },
        ),
        backgroundColor: Colors.teal,
        toolbarHeight: 90,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
          child: Column(children: [
            Text(
              '',
              // ignore: prefer_const_constructors
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: ElevatedButton(
                    child: Text('Add Task'),
                    onPressed: () {
                      Navigator.pushNamed(context, './TaskAddingPage');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.greenAccent,
                      minimumSize: Size(100, 50),
                    ),
                  ),
                ),
                Container(
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, './CategoryDetailsShownPage');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.greenAccent,
                          minimumSize: Size(100, 50),
                        ),
                        child: Text('View Details')))
              ],
            )
          ]),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.antiAlias,
        shape: const CircularNotchedRectangle(),
        color: Colors.teal,
        height: 90,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(context, './CategoryChoosingPage');
              },
              // ignore: prefer_const_constructors
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
