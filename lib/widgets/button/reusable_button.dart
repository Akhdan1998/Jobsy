part of '../../../pages.dart';

enum IconPosition { left, top, right }

class ReusableButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final IconData? icon;
  final IconData? leadingIcon;
  final IconData? trailingIcon;
  final bool showBothIcons;
  final double iconSize;
  final double textSize;
  final String? imageAsset;
  final double? imageWidth;
  final double? imageHeight;
  final Color textColor;
  final Color iconColor;
  final Color? imageColor;
  final Color buttonColor;
  final Color borderColor;
  final double? width;
  final double? height;
  final FontWeight fontWeight;
  final IconPosition iconPosition;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double borderWidth;
  final MainAxisAlignment rowAlignment;
  final TextAlign textAlign;
  final VoidCallback? onLeadingIconPressed;
  final VoidCallback? onTrailingIconPressed;
  final BorderRadiusGeometry? borderRadius;

  const ReusableButton({
    required this.title,
    required this.onPressed,
    this.icon,
    this.leadingIcon,
    this.trailingIcon,
    this.showBothIcons = false,
    this.iconSize = 20.0,
    this.textSize = 20.0,
    this.imageAsset,
    this.imageWidth,
    this.imageHeight,
    this.textColor = Colors.white,
    this.iconColor = Colors.white,
    this.imageColor,
    this.buttonColor = Colors.transparent,
    this.borderColor = Colors.white,
    this.width,
    this.height,
    this.fontWeight = FontWeight.normal,
    this.iconPosition = IconPosition.left,
    this.padding,
    this.margin,
    this.borderWidth = 1.0,
    this.rowAlignment = MainAxisAlignment.center,
    this.textAlign = TextAlign.center,
    this.onLeadingIconPressed,
    this.onTrailingIconPressed,
    this.borderRadius,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool hasIcon = icon != null;
    bool hasAsset = imageAsset != null;
    bool hasTitle = title.isNotEmpty;

    return Bounce(
      duration: const Duration(milliseconds: 100),
      onPressed: onPressed,
      child: Container(
        alignment: Alignment.center,
        width: width ?? double.infinity,
        height: height,
        margin:
            margin ?? const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
        padding: (!hasTitle && (hasIcon || showBothIcons) && !hasAsset)
            ? EdgeInsets.zero
            : padding ??
                const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        decoration: BoxDecoration(
          border: Border.all(width: borderWidth, color: borderColor),
          color: buttonColor,
          borderRadius: borderRadius ?? BorderRadius.circular(10),
        ),
        child: showBothIcons
            ? Row(
                mainAxisAlignment: rowAlignment,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (leadingIcon != null) ...[
                    IconButton(
                      icon: Icon(leadingIcon, color: iconColor, size: iconSize),
                      onPressed: onLeadingIconPressed ?? onPressed,
                      // splashRadius: 20,
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                    ),
                    // const SizedBox(width: 10),
                  ],
                  Expanded(
                    child: Text(
                      title,
                      style: Poppins(
                        color: textColor,
                        fontSize: textSize,
                        fontWeight: fontWeight,
                      ),
                      textAlign: textAlign,
                    ),
                  ),
                  if (trailingIcon != null) ...[
                    const SizedBox(width: 10),
                    IconButton(
                      icon:
                          Icon(trailingIcon, color: iconColor, size: iconSize),
                      onPressed: onTrailingIconPressed ?? onPressed,
                      // splashRadius: 20,
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                    ),
                  ],
                ],
              )
            : (!hasTitle && hasIcon)
                ? Center(child: Icon(icon, color: iconColor, size: iconSize))
                : iconPosition == IconPosition.left
                    ? Row(
                        mainAxisAlignment: rowAlignment,
                        children: [
                          if (hasIcon) ...[
                            Icon(icon, color: iconColor, size: iconSize),
                            const SizedBox(width: 10),
                          ],
                          if (hasAsset) ...[
                            Image.asset(
                              imageAsset!,
                              width: imageWidth ?? 20,
                              height: imageHeight ?? 20,
                              fit: BoxFit.cover,
                              color: imageColor,
                            ),
                            const SizedBox(width: 8),
                          ],
                          Text(
                            title,
                            style: Poppins(
                              color: textColor,
                              fontSize: textSize,
                              fontWeight: fontWeight,
                            ),
                            textAlign: textAlign,
                          ),
                        ],
                      )
                    : iconPosition == IconPosition.top
                        ? Column(
                            mainAxisAlignment: rowAlignment,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              if (hasIcon) ...[
                                Icon(icon, color: iconColor, size: iconSize),
                                if (hasTitle) const SizedBox(height: 5),
                              ],
                              if (hasAsset) ...[
                                Image.asset(
                                  imageAsset!,
                                  width: imageWidth ?? 20,
                                  height: imageHeight ?? 20,
                                  fit: BoxFit.cover,
                                  color: imageColor,
                                ),
                                const SizedBox(width: 8),
                              ],
                              const SizedBox(height: 8),
                              if (hasTitle)
                                Text(
                                  title,
                                  style: Poppins(
                                    color: textColor,
                                    fontSize: textSize,
                                    fontWeight: fontWeight,
                                  ),
                                  textAlign: textAlign,
                                ),
                            ],
                          )
                        : Row(
                            mainAxisAlignment: rowAlignment,
                            children: [
                              Expanded(
                                child: Text(
                                  title,
                                  style: Poppins(
                                    color: textColor,
                                    fontSize: textSize,
                                    fontWeight: fontWeight,
                                  ),
                                  textAlign: textAlign,
                                  softWrap: true,
                                  maxLines: null,
                                  overflow: TextOverflow.visible,
                                ),
                              ),
                              if (hasIcon) ...[
                                const SizedBox(width: 10),
                                Icon(icon, color: iconColor, size: iconSize),
                              ],
                              if (hasAsset) ...[
                                Image.asset(
                                  imageAsset!,
                                  width: imageWidth ?? 20,
                                  height: imageHeight ?? 20,
                                  fit: BoxFit.cover,
                                  color: imageColor,
                                ),
                                const SizedBox(width: 8),
                              ],
                            ],
                          ),
      ),
    );
  }
}

