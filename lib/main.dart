import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_text/responsive_text.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Text Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'title Text',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: getResponsiveFontSize(context, fontSize: 20),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'this is the body text it should be responsive',
              style: TextStyle(
                  fontSize: getResponsiveFontSize(context, fontSize: 16)),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

// scale factor
// responsive font size
// (min,max) font size

