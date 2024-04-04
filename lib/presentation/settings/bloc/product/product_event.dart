part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.getRemoteProducts() = _GetRemoteProducts;
  const factory ProductEvent.addRemoteProduct(ProductRequestModel product) =
      _AddRemoteProduct;
  const factory ProductEvent.deleteRemoteProduct(int id) = _DeleteRemoteProduct;
  const factory ProductEvent.syncToLocal() = _SyncToLocal;
  const factory ProductEvent.getLocalProducts() = _GetLocalProducts;
  const factory ProductEvent.getLocalProductsByCategory(String category) =
      _GetLocalProductsByCategory;
  const factory ProductEvent.searchLocalProducts(String name) =
      _SearchLocalProducts;
}
