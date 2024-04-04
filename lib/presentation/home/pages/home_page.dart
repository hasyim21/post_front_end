import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/widgets/search_input.dart';
import '../../../core/widgets/spaces.dart';
import '../../../core/constants/app_colors.dart';
import '../../settings/bloc/product/product_bloc.dart';

import '../widgets/grid_products.dart';
import '../widgets/list_category.dart';

class HomePage extends StatefulWidget {
  static String route = '/home';

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();

  void _onClearSearch() {
    _searchController.clear();
  }

  @override
  void initState() {
    super.initState();
    context.read<ProductBloc>().add(const ProductEvent.getLocalProducts());
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: AppColors.background,
      ),
      body: ListView(
        padding: const EdgeInsets.all(12.0),
        children: [
          SearchInput(
            controller: _searchController,
            onChanged: (value) {
              context
                  .read<ProductBloc>()
                  .add(ProductEvent.searchLocalProducts(value));

              if (value.isEmpty) {
                context
                    .read<ProductBloc>()
                    .add(const ProductEvent.getLocalProducts());
              }
            },
          ),
          const SpaceHeight(),
          ListCategory(onClearSearch: _onClearSearch),
          const SpaceHeight(),
          const GridProducts(),
          const SpaceHeight(),
        ],
      ),
    );
  }
}
