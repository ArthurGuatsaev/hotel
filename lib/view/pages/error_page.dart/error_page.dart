import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Упссс...'),
      ),
      body: const Center(
        child: Text('Возникла ошибка ...'),
      ),
    );
  }
}
