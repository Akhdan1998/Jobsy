part of '../../../pages.dart';

class ReusableExpansionTile<T> extends StatefulWidget {
  final String title;
  final double? sizeTitle;
  final double? width;
  final List<T> items;
  final ValueChanged<bool>? onExpansionChanged;
  final String Function(T item) itemLabelBuilder;
  final Widget Function(T item) itemBuilder;
  final void Function(T item)? onItemPressed;
  final Color? textColor;
  final Color? borderColor;
  final Color? iconColor;
  final Color? trailingColor;
  final Color? dividerColor;
  final Color? fillColor;
  final Color? leadingIconColor;
  final Widget? leadingIcon;
  final double? minTileHeight;
  final Alignment titleAlignment;
  final Alignment itemAlignment;

  const ReusableExpansionTile({
    super.key,
    required this.title,
    this.sizeTitle,
    this.width,
    required this.items,
    required this.onExpansionChanged,
    required this.itemBuilder,
    required this.itemLabelBuilder,
    this.onItemPressed,
    this.textColor,
    this.borderColor,
    this.iconColor,
    this.trailingColor,
    this.dividerColor,
    this.fillColor,
    this.leadingIconColor,
    this.leadingIcon,
    this.minTileHeight,
    this.titleAlignment = Alignment.center,
    this.itemAlignment = Alignment.center,
  });

  @override
  State<ReusableExpansionTile<T>> createState() =>
      _ReusableExpansionTileState<T>();
}

class _ReusableExpansionTileState<T> extends State<ReusableExpansionTile<T>> {
  T? _selectedItem;
  bool isExpanded = false;
  bool dropdownIcon = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      decoration: BoxDecoration(
        color: widget.fillColor ?? transparentColor,
        border: Border.all(
          color: widget.borderColor ?? whiteSkin,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ExpansionTile(
        minTileHeight: widget.minTileHeight ?? 48,
        tilePadding: const EdgeInsets.only(left: 10, right: 10),
        title: Align(
          alignment: widget.titleAlignment,
          child: Text(
            _selectedItem != null
                ? widget.itemLabelBuilder(_selectedItem as T)
                : widget.title,
            style: Poppins(color: widget.textColor ?? whiteSkin, fontSize: widget.sizeTitle,),
          ),
        ),
        iconColor: widget.iconColor ?? whiteSkin,
        collapsedIconColor: widget.iconColor ?? skyBlue,
        onExpansionChanged: (expanded) {
          setState(() {
            isExpanded = expanded;
          });
          if (widget.onExpansionChanged != null) {
            widget.onExpansionChanged!(expanded);
          }
        },
        shape: const RoundedRectangleBorder(
          side: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        collapsedShape: const RoundedRectangleBorder(
          side: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        leading: widget.leadingIcon,
        trailing: Icon(
          dropdownIcon ? Icons.expand_less : Icons.expand_more,
          color: widget.trailingColor ?? whiteSkin,
        ),
        children: widget.items.map((item) {
          return Column(
            children: [
              _buildDivider(
                context,
                color: widget.dividerColor ?? whiteSkin,
                endIndent: 10,
                indent: 10,
                thickness: 1,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedItem = item;
                  });
                  widget.onItemPressed?.call(item);
                },
                child: Container(
                  alignment: widget.itemAlignment,
                  color: transparentColor,
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: widget.itemBuilder(item),
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}