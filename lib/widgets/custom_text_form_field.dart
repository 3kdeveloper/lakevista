import '../core/constants/export.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final String? errorText;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final bool? obscureText;
  final bool? enabled;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Color? fillColor;
  final Color? hintColor;
  final int? maxLines;
  final int? minLines;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final EdgeInsets? contentPadding;
  final FocusNode? focusNode;
  final AutovalidateMode? autovalidateMode;
  final InputBorder? errorBorder;
  final Function(String? value)? onChanged;
  final Function(String? value)? onFieldSubmitted;
  final String? Function(String? value)? validator;
  final InputBorder? border;
  final BorderRadius? borderRadius;
  final VoidCallback? onTap;
  final Function()? onEditingComplete;

  const CustomTextFormField({
    Key? key,
    required this.controller,
    this.hintText,
    this.keyboardType,
    this.obscureText,
    this.enabled = true,
    this.validator,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
    this.fillColor,
    this.maxLines,
    this.minLines,
    this.textStyle,
    this.hintStyle,
    this.hintColor,
    this.errorText,
    this.contentPadding,
    this.textInputAction,
    this.onFieldSubmitted,
    this.focusNode,
    this.autovalidateMode,
    this.errorBorder,
    this.border,
    this.borderRadius,
    this.onTap,
    this.onEditingComplete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ??
          BorderRadius.circular(context.w * ScreenPercentage.screenSize_2),
      child: TextFormField(
        onTap: onTap,
        controller: controller,
        textInputAction: textInputAction ?? TextInputAction.done,
        autovalidateMode:
            autovalidateMode ?? AutovalidateMode.onUserInteraction,
        enabled: enabled,
        focusNode: focusNode,
        maxLines: maxLines ?? 1,
        minLines: minLines ?? 1,
        keyboardType: keyboardType,
        obscureText: obscureText ?? false,
        style: textStyle ?? textTheme.labelMedium,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          hintText: hintText ?? StringsResource.pleaseEnterText,
          hintStyle: hintStyle ??
              textTheme.labelMedium
                  ?.copyWith(color: hintColor ?? ColorsResource.greyColor),
          errorStyle: textTheme.labelMedium
              ?.copyWith(color: Theme.of(context).colorScheme.error),
          errorText: errorText,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          fillColor: fillColor ?? ColorsResource.whiteColor,
          filled: true,
          errorMaxLines: 2,
          contentPadding: contentPadding ??
              EdgeInsets.symmetric(
                  vertical: context.h * ScreenPercentage.screenSize_022,
                  horizontal: context.h * ScreenPercentage.screenSize_022),
          border: border ??
              OutlineInputBorder(
                borderRadius: borderRadius ??
                    BorderRadius.circular(
                        context.w * ScreenPercentage.screenSize_2),
                borderSide:
                    const BorderSide(color: ColorsResource.primaryColor),
              ),
          focusedBorder: border ??
              OutlineInputBorder(
                borderRadius: borderRadius ??
                    BorderRadius.circular(
                        context.w * ScreenPercentage.screenSize_2),
                borderSide:
                    const BorderSide(color: ColorsResource.primaryColor),
              ),
          errorBorder: errorBorder ??
              OutlineInputBorder(
                borderRadius: borderRadius ??
                    BorderRadius.circular(
                        context.w * ScreenPercentage.screenSize_2),
                borderSide: const BorderSide(color: ColorsResource.errorColor),
              ),
          focusedErrorBorder: border ??
              OutlineInputBorder(
                borderRadius: borderRadius ??
                    BorderRadius.circular(
                        context.w * ScreenPercentage.screenSize_2),
                borderSide:
                    const BorderSide(color: ColorsResource.primaryColor),
              ),
        ),
        onChanged: onChanged,
        validator: validator,
        onFieldSubmitted: onFieldSubmitted,
        onEditingComplete: onEditingComplete,
      ),
    );
  }
}
