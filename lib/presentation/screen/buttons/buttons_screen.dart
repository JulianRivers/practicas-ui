import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF213e70),
      alignment: Alignment.center,
      child: SingleChildScrollView(
        child: Column(children: [
          MaterialCustomButton(
            text: 'Material Design \n Material You',
            onPressed: () {},
          ),
          const SizedBox(height: 20),
          FlatButton(onPressed: () {}, text: "Flat Design"),
          const SizedBox(height: 20),
          SaturedButton(
            color: const Color(0xFF213e70),
            text: 'Neumorphism \n Skeumorphis',
            onPressed: () {},
          ),
          const SizedBox(height: 20),
          GlassButton(
            onPressed: () {},
            text: 'Glass Desing',
          ),
        ]),
      ),
    );
  }
}

class MaterialCustomButton extends StatelessWidget {
  final Color color;
  final String text;
  final VoidCallback onPressed;

  const MaterialCustomButton({
    super.key,
    this.color = const Color(0xFFffb956),
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 350,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(0.5),
            offset: const Offset(5, 5),
            blurRadius: 10),
      ]),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            backgroundColor: color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              height: 1.5),
        ),
      ),
    );
  }
}

class FlatButton extends StatelessWidget {
  final Color color;
  final String text;
  final VoidCallback onPressed;

  const FlatButton({
    super.key,
    this.color = const Color(0xFFffb956),
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: 350,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            backgroundColor: color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              height: 1.5),
        ),
      ),
    );
  }
}

class GlassButton extends StatelessWidget {
  final Color? color;
  final String text;
  final VoidCallback onPressed;

  const GlassButton({
    super.key,
    this.color = const Color.fromARGB(136, 255, 255, 255),
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            backgroundColor: color,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            side: const BorderSide(color: Colors.white, width: 2)),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              height: 1.5),
        ),
      ),
    );
  }
}

class SaturedButton extends StatelessWidget {
  final Color color;
  final String text;
  final VoidCallback onPressed;

  const SaturedButton({
    super.key,
    required this.color,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 350,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), boxShadow: [
        BoxShadow(
            color: Colors.white.withOpacity(0.3),
            offset: const Offset(-10, -10),
            blurRadius: 20),
        BoxShadow(
            color: Colors.black.withOpacity(0.5),
            offset: const Offset(8, 8),
            blurRadius: 20),
      ]),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            backgroundColor: color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              height: 1.5),
        ),
      ),
    );
  }
}
