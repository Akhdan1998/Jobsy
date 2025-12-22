part of '../../../pages.dart';

Widget _buildCard({
  required BuildContext context,
  required Widget child,
  EdgeInsets? margin,
  EdgeInsets? padding,
  double? height,
  double? width,
  BorderRadius? borderRadius,
  Alignment? alignment,
  List<BoxShadow>? boxShadow,
  BoxBorder? border,
  Color? color,
  Gradient? gradient,
}) {
  return Container(
    alignment: alignment ?? Alignment.centerLeft,
    width: width,
    height: height,
    decoration: BoxDecoration(
      borderRadius: borderRadius ?? BorderRadius.circular(15),
      color: gradient == null ? (color ?? whiteSkin) : null,
      gradient: gradient,
      boxShadow: boxShadow ??
          const [
            BoxShadow(
              color: neutralGrey,
              spreadRadius: 1,
              blurRadius: 2,
            ),
          ],
      border: border,
    ),
    padding: padding ?? const EdgeInsets.all(20),
    margin: margin ?? const EdgeInsets.all(0),
    child: child,
  );
}