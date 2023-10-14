import '../core/constants/export.dart';

class CustomButton extends StatelessWidget {
  final String btnText;
  final Color? btnTextColor;
  final Color? btnColor;
  final double? width;
  final double? height;
  final Widget? child;
  final bool textScaleFactor;
  final VoidCallback onPressed;

  const CustomButton({
    Key? key,
    required this.btnText,
    this.btnColor,
    this.width,
    this.height,
    required this.onPressed,
    this.btnTextColor,
    this.child,
    this.textScaleFactor = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPressed,
        child: Container(
          alignment: Alignment.center,
          height: height ?? context.h * ScreenPercentage.screenSize_6,
          width: width ?? context.w,
          decoration: BoxDecoration(
            color: btnColor ?? ColorsResource.primaryColor,
            borderRadius: BorderRadius.circular(
                context.w * ScreenPercentage.screenSize_2),
          ),
          child: child ??
              CustomTextView(
                text: btnText,
                textScaleFactor: textScaleFactor,
                textStyle: textTheme.labelLarge?.copyWith(
                    color: btnTextColor ?? ColorsResource.whiteColor),
              ),
        ));
  }
}
