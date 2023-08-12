import 'package:flutter/material.dart';
import 'package:fuerte_doctors/src/views/dashboard.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const FuerteDoctors());
}


class FuerteDoctors extends StatelessWidget {
  const FuerteDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
  }
}