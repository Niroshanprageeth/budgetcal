// ignore_for_file: prefer_const_constructors
import 'package:budgetcal/BudgetCalculatorScreens/categorydetailsshowpage.dart';
import 'package:budgetcal/BudgetCalculatorScreens/normalbudgetaddingpage.dart';
import 'package:budgetcal/BudgetCalculatorScreens/advancebudgetaddingpage.dart';
import 'package:flutter/material.dart';
import 'BudgetCalculatorScreens/eventselectionpage.dart';
import 'BudgetCalculatorScreens/categorychossingpage.dart';
import 'BudgetCalculatorScreens/categoryshownpage.dart';
import 'BudgetCalculatorScreens/taskaddingpage.dart';

// ignore: use_key_in_widget_constructors
class Routes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        './EventselectionPage': (context) => EventSelectionPage(),
        './CategoryChoosingPage': (context) => CategoryChosingPage(),
        './CategoryShownPage': (context) => CategoryShownPage(),
        './TaskAddingPage': (context) => TaskAddingPage(),
        './NormalBudgetOptionPage': (context) => NormalBudgetOptionPage(),
        './AdvanceBudgetOptionPage': (context) => AdvanceBudgetOptionPage(),
        './CategoryDetailsShownPage':(context) => CategoryDetalsShownPage(),
       // './RemainderSetPage':(context) => RemainderSetPage(),
      },
      home: EventSelectionPage(),
    );
  }
}
