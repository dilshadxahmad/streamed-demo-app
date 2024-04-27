import 'package:flutter/material.dart';
import 'package:streamed_demo_app/streamed_app.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const StreamedApp();
  }
}
