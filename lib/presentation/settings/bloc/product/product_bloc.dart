import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/models/request/product_request_model.dart';
import '../../../../data/models/response/product_response_model.dart';
import '../../../../data/respositories/product_repository.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRepository _productRepository;
  ProductBloc(this._productRepository) : super(const _Initial()) {
    on<_GetRemoteProducts>((event, emit) async {
      emit(const _Loading());
      try {
        final products = await _productRepository.getRemoteProducts();
        emit(_Success(products.data));
      } catch (e) {
        emit(_Error(e.toString()));
      }
    });

    on<_AddRemoteProduct>((event, emit) async {
      emit(const _Loading());
      try {
        await _productRepository.addRemoteProduct(event.product);
        final products = await _productRepository.getRemoteProducts();
        emit(_Success(products.data));
      } catch (e) {
        emit(_Error(e.toString()));
      }
    });

    on<_DeleteRemoteProduct>((event, emit) async {
      try {
        await _productRepository.deleteRemoteProduct(event.id);
        final products = await _productRepository.getRemoteProducts();
        emit(_Success(products.data));
      } catch (e) {
        emit(_Error(e.toString()));
      }
    });

    on<_SyncToLocal>((event, emit) async {
      emit(const _Loading());
      try {
        final products = await _productRepository.getRemoteProducts();
        await _productRepository.removeAllLocalProduct();
        await _productRepository.addAllLocalProduct(products.data);
        final localProducts = await _productRepository.getLocalProducts();
        emit(_Success(localProducts));
      } catch (e) {
        emit(_Error(e.toString()));
      }
    });

    on<_GetLocalProducts>((event, emit) async {
      emit(const _Loading());
      try {
        final products = await _productRepository.getLocalProducts();
        emit(_Success(products));
      } catch (e) {
        emit(_Error(e.toString()));
      }
    });

    on<_GetLocalProductsByCategory>((event, emit) async {
      emit(const _Loading());
      List<Product> products = [];
      try {
        if (event.category == 'all') {
          products = await _productRepository.getLocalProducts();
        } else {
          products = await _productRepository
              .getLocalProductsByCatgeory(event.category);
        }
        emit(_Success(products));
      } catch (e) {
        emit(_Error(e.toString()));
      }
    });

    on<_SearchLocalProducts>((event, emit) async {
      emit(const _Loading());
      try {
        final products =
            await _productRepository.searchLocalProducts(event.name);
        emit(_Success(products));
      } catch (e) {
        emit(_Error(e.toString()));
      }
    });
  }
}
