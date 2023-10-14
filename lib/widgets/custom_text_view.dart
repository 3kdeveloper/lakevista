import '../../../../core/constants/export.dart';

class CustomTextView extends StatelessWidget {
  const CustomTextView(
      {Key? key,
      required String text,
      TextStyle? textStyle,
      bool isEllipsis = false,
      TextAlign? align,
      this.maxLines,
      this.textScaleFactor = false,
      Function()? onTap})
      : _text = text,
        _textStyle = textStyle,
        _align = align,
        _isEllipsis = isEllipsis,
        _onTap = onTap,
        super(key: key);

  final String _text;
  final TextStyle? _textStyle;
  final TextAlign? _align;
  final bool _isEllipsis;
  final bool textScaleFactor;
  final int? maxLines;
  final Function()? _onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: Text(
        _text,
        textScaleFactor: textScaleFactor ? DimensionsResource.d_1 : null,
        overflow: _isEllipsis ? TextOverflow.ellipsis : null,
        softWrap: true,
        style: _textStyle ?? textTheme.bodyMedium,
        maxLines: maxLines,
        textHeightBehavior:
            const TextHeightBehavior(applyHeightToFirstAscent: false),
        textAlign: _align ?? TextAlign.center,
      ),
    );
  }
}
