import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/widgets/spaces.dart';
import '../../../core/constants/app_colors.dart';
import '../../home/widgets/product_empty.dart';
import '../bloc/product/product_bloc.dart';
import '../widgets/manage_product_item.dart';
import 'add_product_page.dart';

class ManageProductPage extends StatefulWidget {
  static String route = '/manage_product';

  const ManageProductPage({super.key});

  @override
  State<ManageProductPage> createState() => _ManageProductPageState();
}

class _ManageProductPageState extends State<ManageProductPage> {
  @override
  void initState() {
    super.initState();
    context.read<ProductBloc>().add(const ProductEvent.getRemoteProducts());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kelola Produk'),
        shape: Border(
          bottom: BorderSide(
            width: 1.0,
            color: AppColors.border,
          ),
        ),
      ),
      body: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return const ProductEmpty();
            },
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            success: (products) {
              if (products.isEmpty) {
                return const ProductEmpty();
              } else {
                return ListView.separated(
                  padding: const EdgeInsets.all(12.0),
                  itemCount: products.length,
                  separatorBuilder: (context, index) => const SpaceHeight(),
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return Dismissible(
                      key: Key(product.name),
                      background: Container(
                        color: Colors.red,
                        alignment: Alignment.centerRight,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20.0,
                        ),
                        child: const Icon(
                          Icons.delete,
                          color: Colors.white,
                        ),
                      ),
                      direction: DismissDirection.endToStart,
                      onDismissed: (direction) {
                        context.read<ProductBloc>().add(
                              ProductEvent.deleteRemoteProduct(product.id!),
                            );
                      },
                      child: ManageProductItem(
                        product: products[index],
                      ),
                    );
                  },
                );
              }
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, AddProductPage.route);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
