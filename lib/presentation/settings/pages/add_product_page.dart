import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pos_front_end/core/utils/int_ext.dart';
import 'package:pos_front_end/core/utils/string_ext.dart';

import '../../../core/widgets/buttons.dart';
import '../../../core/widgets/custom_dropdown.dart';
import '../../../core/widgets/custom_text_field.dart';
import '../../../core/widgets/image_picker_widget.dart';
import '../../../core/widgets/spaces.dart';
import '../../../core/constants/app_colors.dart';
import '../../../data/models/request/product_request_model.dart';
import '../bloc/product/product_bloc.dart';
import '../models/category_model.dart';

class AddProductPage extends StatefulWidget {
  static String route = '/add_product';

  const AddProductPage({super.key});

  @override
  State<AddProductPage> createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController stockController = TextEditingController();

  String category = 'food';

  XFile? imageFile;

  bool isFavorite = false;

  final List<CategoryModel> categories = [
    CategoryModel(name: 'Minuman', value: 'drink'),
    CategoryModel(name: 'Makanan', value: 'food'),
    CategoryModel(name: 'Camilan', value: 'snack'),
  ];

  @override
  void dispose() {
    nameController.dispose();
    priceController.dispose();
    stockController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Produk'),
        shape: Border(
          bottom: BorderSide(
            width: 1.0,
            color: AppColors.border,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(12.0),
        children: [
          CustomTextField(
            controller: nameController,
            label: 'Nama Produk',
          ),
          const SpaceHeight(),
          CustomTextField(
            controller: priceController,
            label: 'Harga Produk',
            keyboardType: TextInputType.number,
            onChanged: (value) {
              final int priceValue = value.toIntegerFromText;
              priceController.text = priceValue.currencyFormatRp;
              priceController.selection = TextSelection.fromPosition(
                TextPosition(offset: priceController.text.length),
              );
            },
          ),
          const SpaceHeight(),
          ImagePickerWidget(
            label: 'Foto Produk',
            onChanged: (file) {
              if (file == null) {
                return;
              }
              imageFile = file;
            },
          ),
          const SpaceHeight(),
          // CustomTextField(
          //   controller: stockController,
          //   label: 'Stok Produk',
          //   keyboardType: TextInputType.number,
          // ),
          // const SpaceHeight(),
          CustomDropdown<CategoryModel>(
            value: categories.first,
            items: categories,
            label: 'Kategori',
            onChanged: (value) {
              category = value!.value;
            },
          ),
          // const SpaceHeight(),
          // //isFavorite
          // Row(
          //   children: [
          //     Checkbox(
          //       value: isFavorite,
          //       onChanged: (value) {
          //         setState(() {
          //           isFavorite = value!;
          //         });
          //       },
          //     ),
          //     const Text('Produk Terlaris'),
          //   ],
          // ),
          const SpaceHeight(height: 24.0),
          Row(
            children: [
              Expanded(
                child: Button.outlined(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  label: 'Batal',
                ),
              ),
              const SpaceWidth(12.0),
              Expanded(
                child: BlocConsumer<ProductBloc, ProductState>(
                  listener: (context, state) {
                    state.maybeWhen(
                      orElse: () {},
                      success: (_) {
                        Navigator.pop(context);
                      },
                    );
                  },
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () {
                        return Button.filled(
                          onPressed: () {
                            final String name = nameController.text;
                            final int price =
                                priceController.text.toIntegerFromText;
                            // final int stock =
                            //     stockController.text.toIntegerFromText;
                            final product = ProductRequestModel(
                              name: name,
                              price: price,
                              stock: 0,
                              // stock: stock,
                              category: category,
                              isFavorite: isFavorite ? 1 : 0,
                              image: imageFile!,
                            );
                            context.read<ProductBloc>().add(
                                  ProductEvent.addRemoteProduct(product),
                                );
                          },
                          label: 'Simpan',
                        );
                      },
                      loading: () {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
