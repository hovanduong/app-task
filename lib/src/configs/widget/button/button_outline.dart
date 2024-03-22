import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../text/paragraph.dart';

class AppOutlineButton extends StatelessWidget {
  const AppOutlineButton({
    super.key,
    this.color,
    this.onTap,
    this.content,
    this.colorContent, 
    this.width,
  });
  final Color? color;
  final Function()? onTap;
  final String? content;
  final Color? colorContent;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap!(),
      child: Container(
        width: width?? MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: SizeToPadding.sizeSmall),
        decoration: BoxDecoration(
          border: Border.all(
            color: color ?? AppColors.BLACK_500,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(BorderRadiusSize.sizeSmall),
          ),
        ),
        child: Paragraph(
          content: content,
          textAlign: TextAlign.center,
          style: STYLE_MEDIUM.copyWith(
            color: colorContent ?? AppColors.BLACK_500,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
