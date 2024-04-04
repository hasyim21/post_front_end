import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_front_end/core/utils/int_ext.dart';

import '../../../core/widgets/spaces.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/variables.dart';
import '../../home/bloc/checkout/checkout_bloc.dart';
import '../../home/models/order_item.dart';

class OrderCard extends StatelessWidget {
  final OrderItem data;

  const OrderCard({
    super.key,
    required this.data,
  });

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
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(6.0)),
            child: CachedNetworkImage(
              imageUrl: '${Variables.imageBaseUrl}${data.product.image}',
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
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.product.name,
                  style: const TextStyle(
                    color: AppColors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SpaceHeight(height: 2.0),
                Text(
                  data.product.price.currencyFormatRp,
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    StatefulBuilder(
                      builder: (context, setState) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(4.0),
                            ),
                            border: Border.all(
                              color: AppColors.border,
                            ),
                          ),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  // if (data.quantity > 1) {
                                  context.read<CheckoutBloc>().add(
                                      CheckoutEvent.removeCheckout(
                                          data.product));
                                  // }
                                },
                                child: const Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.grey,
                                    size: 20.0,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 35.0,
                                child: Center(
                                  child: Text(data.quantity.toString()),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  context.read<CheckoutBloc>().add(
                                      CheckoutEvent.addCheckout(data.product));
                                },
                                child: const Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.grey,
                                    size: 20.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
