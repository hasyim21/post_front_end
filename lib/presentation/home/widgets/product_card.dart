import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_front_end/core/widgets/spaces.dart';
import 'package:pos_front_end/core/constants/variables.dart';
import 'package:pos_front_end/core/utils/int_ext.dart';

import '../../../core/constants/app_colors.dart';
import '../../../data/models/response/product_response_model.dart';
import '../bloc/checkout/checkout_bloc.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            context.read<CheckoutBloc>().add(
                  CheckoutEvent.addCheckout(product),
                );
          },
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: const BorderRadius.all(
                Radius.circular(8.0),
              ),
              border: Border.all(
                width: 1.0,
                color: AppColors.border,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0),
                    ),
                    child: CachedNetworkImage(
                      imageUrl: '${Variables.imageBaseUrl}${product.image}',
                      placeholder: (context, url) => const SizedBox(),
                      errorWidget: (context, url, error) => const Icon(
                        Icons.image_not_supported_outlined,
                        size: 48.0,
                      ),
                    ),
                  ),
                ),
                const SpaceHeight(height: 8.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    product.name,
                    style: const TextStyle(
                      color: AppColors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    product.price.currencyFormatRp,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SpaceHeight(height: 8.0),
              ],
            ),
          ),
        ),
        BlocBuilder<CheckoutBloc, CheckoutState>(
          builder: (context, state) {
            return _buildBadge(context, state);
          },
        ),
      ],
    );
  }

  Widget _buildBadge(BuildContext context, CheckoutState state) {
    return state.maybeWhen(
      orElse: () => const SizedBox(),
      success: (products, totalQuantity, totalPrice) {
        if (totalQuantity == 0) {
          return const SizedBox();
        }

        final isProductInCart =
            products.any((element) => element.product == product);
        final productQuantity = isProductInCart
            ? products
                .firstWhere((element) => element.product == product)
                .quantity
            : 0;

        if (productQuantity > 0) {
          return Positioned(
            top: 8.0,
            right: 8.0,
            child: badges.Badge(
              badgeStyle: const badges.BadgeStyle(
                badgeColor: AppColors.red,
                padding: EdgeInsets.all(5.0),
              ),
              badgeContent: Text(
                productQuantity.toString(),
                style: const TextStyle(
                  color: AppColors.white,
                  fontSize: 11.0,
                ),
              ),
            ),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
