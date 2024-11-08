import 'package:flutter/material.dart';

class ErrorApp extends StatelessWidget {
  final Object error;
  const ErrorApp({super.key, required this.error});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Center(child: Builder(builder: (context) {
            // if (error is InternetConnectionError) {
            //   return Text((error as InternetConnectionError).message);
            // }
            return const Text(
              'Could not open the application. You are probably not connected to the Internet. Check the connection and try again.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            );
          })),
        ),
      ),
    );
  }
}
