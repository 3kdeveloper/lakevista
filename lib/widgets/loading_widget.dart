import 'package:flutter/cupertino.dart';

import '../core/constants/export.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key, this.color});

  final Color? color;

  @override
  Widget build(BuildContext context) => CupertinoActivityIndicator(
      color: color ?? Theme.of(context).primaryColor);
}
