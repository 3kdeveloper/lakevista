import 'core/constants/export.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
