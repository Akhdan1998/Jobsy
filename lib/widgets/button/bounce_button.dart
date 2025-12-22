part of '../../../pages.dart';

class BounceButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;

  const BounceButton({
    super.key,
    required this.onPressed,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Bounce(
      duration: const Duration(milliseconds: 100),
      onPressed: onPressed,
      child: child,
    );
  }
}