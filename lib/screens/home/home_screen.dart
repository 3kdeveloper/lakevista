import 'package:lakevista/core/constants/export.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
          body: Center(
              child: CustomTextView(
        text: 'Successfully Login',
        textStyle: textTheme.titleLarge,
      )));
}
