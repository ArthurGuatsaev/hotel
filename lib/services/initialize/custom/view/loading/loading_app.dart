part of '../../initialize.dart';

class InitializationSplashScreen extends StatefulWidget {
  final ValueNotifier<({int progress, Map<String, String> message})> progress;
  const InitializationSplashScreen({super.key, required this.progress});

  @override
  State<InitializationSplashScreen> createState() =>
      _InitializationSplashScreenState();
}

class _InitializationSplashScreenState
    extends State<InitializationSplashScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vladikavkaz',
      supportedLocales: const [
        Locale('en'),
        Locale('ru'),
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.black))),
      home: LoadingApp(progress: widget.progress),
    );
  }
}
