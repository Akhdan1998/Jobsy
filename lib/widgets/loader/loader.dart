part of '../../../pages.dart';

class LoaderCircular extends StatelessWidget {
  final Widget child;

  const LoaderCircular({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return GlobalLoaderOverlay(
      overlayColor: transparentColor,
      useDefaultLoading: false,
      overlayWidgetBuilder: (_) => Center(
        child: SpinKitChasingDots(
          color: skyBlue,
          size: 50.0,
        ),
      ),
      child: child,
    );
  }
}