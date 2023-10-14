import '../../../../core/constants/export.dart';

class AuthFooter extends StatelessWidget {
  const AuthFooter(
      {super.key,
      required this.text,
      required this.btnText,
      required this.onTap});

  final String text;
  final String btnText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomTextView(
          text: text,
          textStyle:
              textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w300),
        ),
        SizedBox(width: context.w * ScreenPercentage.screenSize_1),
        GestureDetector(
          onTap: onTap,
          child: CustomTextView(
            text: btnText,
            textStyle: textTheme.titleSmall
                ?.copyWith(color: Theme.of(context).primaryColor),
          ),
        ),
      ],
    );
  }
}
