import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Center(
        child: Stack(
      children: [
        Positioned(
            bottom: media.height * 0.7,
            left: media.width * 0.6,
            child: Image(
              image: const AssetImage('assets/images/groupCirclesOne.png'),
              width: media.width * 0.8,
            )),
        Positioned(
            bottom: media.height * 0.75,
            right: media.width * 0.6,
            child: Image(
              image: const AssetImage('assets/images/groupCirclesTwo.png'),
              width: media.width * 0.7,
            )),
        Positioned(
            bottom: media.height * 0.45,
            left: media.width * 0.16,
            child: Column(
              children: [
                Image(
                  image: const AssetImage('assets/images/iconLogin.png'),
                  width: media.width * 0.7,
                ),
                const Text(
                  'Bienvenido',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                )
              ],
            )),
        Positioned(
          bottom: media.width * -1.25,
          child: CustomLoginForm(
            height: media.height,
            width: media.width,
          ),
        )
      ],
    ));
  }
}

class CustomLoginForm extends StatelessWidget {
  final double height;
  final double width;
  const CustomLoginForm({
    super.key,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.5),
                offset: const Offset(-1, -5),
                blurRadius: 20),
          ]),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'IA - Ecommerce',
              style: TextStyle(fontSize: 30),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const _InputForm(
            labelText: 'Correo Electronico',
            icon: Icon(Icons.person),
          ),
          const SizedBox(
            height: 15,
          ),
          const _InputForm(
            labelText: 'Contraseña',
            icon: Icon(Icons.lock),
          ),
          const SizedBox(
            height: 15,
          ),
          _LoginButton(
            onPressed: () {},
            color: const Color(0XFFffb956),
            text: 'Ingresar',
          )
        ],
      ),
    );
  }
}

class _InputForm extends StatelessWidget {
  final String labelText;
  final Icon icon;

  const _InputForm({required this.labelText, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
          border: Border.all(color: Colors.black.withOpacity(0.3), width: 1.0),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.2),
                offset: const Offset(5, 5),
                blurRadius: 5),
          ]),
      child: TextFormField(
        decoration: InputDecoration(
            border: const OutlineInputBorder(borderSide: BorderSide.none),
            prefixIcon: icon,
            labelText: labelText),
      ),
    );
  }
}

class _LoginButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color color;
  final String text;
  const _LoginButton({
    required this.onPressed,
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          backgroundColor: color,
          padding: const EdgeInsets.symmetric(horizontal: 140, vertical: 15),
          elevation: 6,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
    );
  }
}
