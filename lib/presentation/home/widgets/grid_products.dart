import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../settings/bloc/product/product_bloc.dart';
import 'package:pos_front_end/data/models/response/product_response_model.dart';
import 'product_card.dart';
import 'product_empty.dart';

class GridProducts extends StatelessWidget {
  const GridProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
        return state.when(
          initial: () {
            return const ProductEmpty();
          },
          loading: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
          success: (products) {
            if (products.isEmpty) {
              return const ProductEmpty();
            }
            return _buildGridView(products);
          },
          error: (message) {
            return Text(message);
          },
        );
      },
    );
  }

  LayoutBuilder _buildGridView(List<Product> products) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final crossAxisCount = _calculateCrossAxisCount(constraints.maxWidth);
        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.6,
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 12.0,
            mainAxisSpacing: 12.0,
          ),
          itemBuilder: (context, index) {
            return ProductCard(
              product: products[index],
            );
          },
        );
      },
    );
  }

  int _calculateCrossAxisCount(double maxWidth) {
    if (maxWidth < 550) {
      return 3;
    } else if (maxWidth < 700) {
      return 4;
    } else {
      return 5;
    }
  }
}
