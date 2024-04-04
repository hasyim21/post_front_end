import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pos_front_end/core/utils/int_ext.dart';

import '../../../core/widgets/spaces.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/variables.dart';
import '../../home/models/order_item.dart';

class ProductDetailTransaction extends StatelessWidget {
  const ProductDetailTransaction({
    super.key,
    required this.order,
  });

  final OrderItem order;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      padding: const EdgeInsets.all(12.0),
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(6.0),
            ),
            child: CachedNetworkImage(
              imageUrl: '${Variables.imageBaseUrl}${order.product.image}',
              width: 76.0,
              height: 76.0,
              fit: BoxFit.cover,
              placeholder: (context, url) => const SizedBox(),
              errorWidget: (context, url, error) => const Icon(
                Icons.image_not_supported_outlined,
                size: 48.0,
              ),
            ),
          ),
          const SpaceWidth(12.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                order.product.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SpaceHeight(height: 2.0),
              Text(
                'x${order.quantity}',
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              const SpaceHeight(height: 2.0),
              Text(order.product.price.currencyFormatRp),
            ],
          )
        ],
      ),
    );
  }
}
