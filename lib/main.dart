import 'core/constants/export.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 3), () => FlutterNativeSplash.remove());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: StringsResource.appName,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeData,
      initialRoute: RouteNames.signInScreen,
      onGenerateRoute: AppRouter().generateRoute,
    );
  }
}
