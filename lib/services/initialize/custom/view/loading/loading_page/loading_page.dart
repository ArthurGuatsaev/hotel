import 'package:flutter/material.dart';
import '../widgets/load_text.dart';

class LoadingApp extends StatefulWidget {
  const LoadingApp({
    super.key,
    required this.progress,
  });

  final ValueNotifier<({int progress, Map<String, String> message})> progress;

  @override
  State<LoadingApp> createState() => _LoadingAppState();
}

class _LoadingAppState extends State<LoadingApp> {
  @override
  void initState() {
    widget.progress.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    widget.progress.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(height: 50),
          const Align(
              alignment: Alignment.topRight,
              child: Text('Guatsaev-team',
                  style: TextStyle(fontWeight: FontWeight.bold))),
          const SizedBox(height: 100),
          const Spacer(),
          const CircularProgressIndicator.adaptive(),
          const SizedBox(height: 100),
          LoadText(value: widget.progress.value.message['load'] ?? ''),
          const SizedBox(height: 20),
          LoadText(value: widget.progress.value.message['error'] ?? ''),
          const SizedBox(height: 50),
        ],
      ),
    ));
  }
}
