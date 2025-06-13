import 'package:flutter/material.dart';
import 'device_info_screen.dart';
import 'error_explanation_screen.dart';

void main() {
  runApp(const IReviveApp());
}

class IReviveApp extends StatelessWidget {
  const IReviveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iRevive Diagnostics',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Diagnostics Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome to iRevive!'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const DeviceInfoScreen(),
                  ),
                );
              },
              child: const Text('Show Device Info'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const ErrorExplanationScreen(),
                  ),
                );
              },
              child: const Text('Common Error Explanations'),
            ),
          ],
        ),
      ),
    );
  }
}
