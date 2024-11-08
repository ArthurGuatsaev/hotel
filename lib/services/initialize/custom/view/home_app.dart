part of '../initialize.dart';

class MyHomeApp extends StatelessWidget {
  const MyHomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    final dp = context.myDependencies;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => HotelBloc(hotelR: dp!.hotelR), lazy: false),
        BlocProvider(
            create: (context) => ReserveBloc(reserveR: dp!.reservedR),
            lazy: false),
      ],
      child: MyAppRouter(dependencies: dp),
    );
  }
}

class MyAppRouter extends StatelessWidget {
  const MyAppRouter({
    super.key,
    required this.dependencies,
  });

  final Dependencies? dependencies;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MaterialApp.router(
      theme: createThemeData(size, kIsWeb),
      builder: (context, child) =>
          mediaQueryGenerator(child!, MediaQuery.of(context)),
      debugShowCheckedModeBanner: false,
      routerDelegate: MyNM.delegate,
      routeInformationParser: MyRouterInformationParser(),
    );
  }
}
