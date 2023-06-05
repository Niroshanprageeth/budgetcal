import 'package:budgetcal/Models/Budgetcal/eventset.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'routes.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

/// Flutter code sample for [AppBar].

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  Hive.registerAdapter(
    EventsetAdapter(),
  );
  Hive.registerAdapter(CategorySetAdapter());
  Hive.registerAdapter(SubTaskSetAdapter());

  await Hive.openBox<Eventset>('events');
  runApp(
    DevicePreview(
      builder: (context) => const AppBarApp(),
    ),
  );
}

class AppBarApp extends StatelessWidget {
  const AppBarApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: Routes(),
    );
  }
}
