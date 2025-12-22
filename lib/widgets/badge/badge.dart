part of '../../../pages.dart';

class CusBadge extends StatelessWidget {
  final Widget child;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  const CusBadge({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    this.margin = const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
    this.borderRadius = const BorderRadius.only(
      topRight: Radius.circular(20),
      topLeft: Radius.circular(15),
      bottomRight: Radius.circular(20),
    ),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            deepBlue,
            skyBlue,
          ],
        ),
        borderRadius: borderRadius,
      ),
      child: child,
    );
  }
}
