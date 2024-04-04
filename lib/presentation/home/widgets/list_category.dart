import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/widgets/spaces.dart';
import '../../settings/bloc/product/product_bloc.dart';
import 'category_item.dart';

class ListCategory extends StatefulWidget {
  final VoidCallback onClearSearch;
  const ListCategory({super.key, required this.onClearSearch});

  @override
  State<ListCategory> createState() => _ListCategoryState();
}

class _ListCategoryState extends State<ListCategory> {
  final ValueNotifier _indexValue = ValueNotifier(0);

  void _onCategoryTap(int index) {
    widget.onClearSearch();
    _indexValue.value = index;
    String category = 'all';
    switch (index) {
      case 0:
        category = 'all';
        break;
      case 1:
        category = 'food';
        break;
      case 2:
        category = 'drink';
        break;
      case 3:
        category = 'snack';
        break;
    }
    context
        .read<ProductBloc>()
        .add(ProductEvent.getLocalProductsByCategory(category));
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _indexValue,
      builder: (context, value, _) => SizedBox(
        height: 40.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            CategoryItem(
              iconPath: Assets.icons.allCategories.path,
              label: 'Semua',
              isActive: value == 0,
              onTap: () => _onCategoryTap(0),
            ),
            const SpaceWidth(12.0),
            CategoryItem(
              iconPath: Assets.icons.drink.path,
              label: 'Makanan',
              isActive: value == 1,
              onTap: () => _onCategoryTap(1),
            ),
            const SpaceWidth(12.0),
            CategoryItem(
              iconPath: Assets.icons.food.path,
              label: 'Minuman',
              isActive: value == 2,
              onTap: () => _onCategoryTap(2),
            ),
            const SpaceWidth(12.0),
            CategoryItem(
              iconPath: Assets.icons.snack.path,
              label: 'Camilan',
              isActive: value == 3,
              onTap: () => _onCategoryTap(3),
            ),
          ],
        ),
      ),
    );
  }
}
