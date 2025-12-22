part of '../../../pages.dart';

class CategorySelector extends StatelessWidget {
  final List<Map<String, String>> category;
  final void Function(String id) onPressed;
  final Set<String> selectedCategories;

  const CategorySelector({super.key,
    required this.category,
    required this.onPressed,
    required this.selectedCategories,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: category.map((e) {
        final id = e['id']!;
        final isSelected = selectedCategories.contains(id);
        return GestureDetector(
          onTap: () => onPressed(id),
          child: Container(
            color: transparentColor,
            child: Row(
              children: [
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: isSelected ? skyBlue : whiteSkin,
                    border: Border.all(
                        width: 2, color: isSelected ? skyBlue : neutralGrey),
                    shape: BoxShape.circle,
                  ),
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: whiteSkin),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  e['name']!.tr,
                  style: Poppins(fontSize: 14),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}