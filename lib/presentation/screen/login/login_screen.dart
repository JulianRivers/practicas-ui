import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Stack(
      children: [
        Positioned(
          top: 605,
          child: CustomLoginForm()
          ),
      
      ],
    ));
  }
}

class CustomLoginForm extends StatelessWidget {
  const CustomLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 393,
      decoration: BoxDecoration(
       border: Border.all(
        color: Colors.black,
        width: 2.0
       )
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
      children: [
        const Text('IA - Ecommerce'),
        TextFormField(
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.person),
            labelText: 'Correo Electronico'
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.lock),
            labelText: 'Contraseña'
          ),
        ),
      ],
    ),);
  }
}
