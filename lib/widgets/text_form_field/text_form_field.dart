part of '../../../pages.dart';

class TextFieldCustom extends StatefulWidget {
  final int? maxLength;
  final String hintText;
  final String lebel;
  final bool obscureText;
  final bool icon;
  final bool readOnly;
  final bool autoFocus;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final double cursorHeight;
  final double borderRadius;
  final Color fillColor;
  final Color cursorColor;
  final Color hintColor;
  final bool filled;
  final void Function(String)? onChanged;
  final TextInputType keyboardType;
  final bool onlyNumbers;
  final BorderSide borderSide;
  final BorderSide? focusedBorderSide;
  final BorderSide? enabledBorderSide;
  final BorderSide? errorBorderSide;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final int? minLines;
  final int? maxLines;
  final EdgeInsetsGeometry? contentPadding;
  final FormFieldValidator<String>? validator;
  final bool? enable;
  final VoidCallback? onTap;
  final ScrollPhysics? scroll;

  const TextFieldCustom({
    super.key,
    this.maxLength,
    required this.hintText,
    required this.lebel,
    this.obscureText = false,
    this.icon = false,
    this.readOnly = false,
    this.autoFocus = false,
    this.controller,
    this.focusNode,
    required this.cursorHeight,
    this.borderRadius = 10.0,
    this.fillColor = Colors.white,
    this.cursorColor = Colors.white,
    this.hintColor = Colors.white,
    this.filled = true,
    this.onChanged,
    this.keyboardType = TextInputType.emailAddress,
    this.onlyNumbers = false,
    this.borderSide = BorderSide.none,
    this.focusedBorderSide,
    this.enabledBorderSide,
    this.errorBorderSide,
    this.suffixIcon,
    this.prefixIcon,
    this.minLines,
    this.maxLines,
    this.contentPadding,
    this.validator,
    this.enable = true,
    this.onTap,
    this.scroll,
  });

  @override
  State<TextFieldCustom> createState() => _TextFieldCustomState();
}

class _TextFieldCustomState extends State<TextFieldCustom> {
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      scrollPhysics: widget.scroll,
      onTap: widget.onTap,
      enabled: widget.enable,
      validator: widget.validator,
      minLines: widget.minLines ?? 1,
      maxLines: widget.maxLines,
      style: Poppins(),
      cursorHeight: widget.cursorHeight,
      cursorColor: widget.cursorColor,
      autofocus: widget.autoFocus,
      focusNode: widget.focusNode,
      keyboardType: widget.keyboardType,
      obscureText: _obscureText,
      readOnly: widget.readOnly,
      controller: widget.controller,
      onChanged: widget.onChanged,
      inputFormatters: [
        if (widget.maxLength != null)
          LengthLimitingTextInputFormatter(widget.maxLength),
      ],
      decoration: InputDecoration(
        alignLabelWithHint: true,
        labelText: widget.lebel.isNotEmpty ? widget.lebel : null,
        labelStyle: Poppins(color: neutralGrey),
        hintText: widget.hintText,
        hintStyle: Poppins(
          color: widget.hintColor,
          fontSize: 12,
        ),
        contentPadding:
            widget.contentPadding ?? const EdgeInsets.only(left: 12),
        filled: widget.filled,
        fillColor: widget.fillColor,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          borderSide: widget.focusedBorderSide ??
              const BorderSide(color: transparentColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          borderSide: widget.enabledBorderSide ??
              const BorderSide(color: transparentColor),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          borderSide:
              widget.errorBorderSide ?? BorderSide(color: redBull),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          borderSide: widget.borderSide,
        ),
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.suffixIcon ??
            (widget.obscureText
                ? IconButton(
                    icon: Icon(
                      size: 20,
                      _obscureText ? Icons.visibility_off : Icons.visibility,
                      color: skyBlue,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  )
                : null),
      ),
    );
  }
}