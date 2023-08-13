import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Container(
          color: Colors.indigo[700],
          alignment: Alignment.center,
          child: const SingleChildScrollView(
            child: Column(children: [
              MaterialButton(),
              FlatButton(),
              GlassButton(),
              SaturedButton(),
            ]),
          ),
        ));
  }
}

class SaturedButton extends StatelessWidget {
  const SaturedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text('Satured');
  }
}

class GlassButton extends StatelessWidget {
  const GlassButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text('Glass');
  }
}

class FlatButton extends StatelessWidget {
  const FlatButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text('flat');
  }
}

class MaterialButton extends StatelessWidget {
  const MaterialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(0.3),
            offset: const Offset(0, 8),
            blurRadius: 10),
      ]),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 30),
            backgroundColor: Colors.orange[200],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        child: const Column(
          children: [
            Text(
              'Material Design',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Material You',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
