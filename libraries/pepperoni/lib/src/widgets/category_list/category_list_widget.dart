import 'package:flutter/material.dart';

class CategoryListWidget extends StatelessWidget {
  final List<CategoryListItem> items;
  const CategoryListWidget({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 5,
      runSpacing: 10,
      children: List.from(
        items.map(
          (item) => _CategoryItemWidget(
            item: item,
          ),
        ),
      ),
    );
  }
}

class _CategoryItemWidget extends StatelessWidget {
  final CategoryListItem item;
  const _CategoryItemWidget({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 4.3,
      child: Material(
        color: Colors.white,
        child: InkWell(
          onTap: () {
            item.onTap(item);
          },
          child: Column(
            children: [
              SizedBox(
                width: 100,
                child: AspectRatio(
                  aspectRatio: 9 / 8,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: ColoredBox(
                        color: Colors.grey.withOpacity(0.1),
                        child: Image.network(
                          item.imageUrl,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                item.label,
                style: const TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryListItem {
  final String label;
  final String imageUrl;
  final void Function(CategoryListItem item) onTap;

  CategoryListItem({
    required this.label,
    required this.imageUrl,
    required this.onTap,
  });
}
