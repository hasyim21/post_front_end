import '../../core/utils/custom_error.dart';
import '../models/request/product_request_model.dart';
import '../models/response/add_product_response_model.dart';
import '../models/response/product_response_model.dart';
import '../services/product_service.dart';
import '../services/sqlite_service.dart';

class ProductRepository {
  final ProductService productService;

  ProductRepository({required this.productService});

  // remote data
  Future<ProductResponseModel> getRemoteProducts() async {
    try {
      final result = await productService.getProducts();
      return result;
    } catch (e) {
      throw CustomError(e.toString());
    }
  }

  Future<AddProductResponseModel> addRemoteProduct(
    ProductRequestModel product,
  ) async {
    try {
      final result = await productService.addProduct(product);
      return result;
    } catch (e) {
      throw CustomError(e.toString());
    }
  }

  Future<String> deleteRemoteProduct(int id) async {
    try {
      final result = await productService.deleteProduct(id);
      return result;
    } catch (e) {
      throw CustomError(e.toString());
    }
  }

  // local data
  Future<List<Product>> getLocalProducts() async {
    try {
      final result = await SQLiteService.instance.getProducts();
      return result;
    } catch (e) {
      throw CustomError(e.toString());
    }
  }

  Future<List<Product>> getLocalProductsByCatgeory(String category) async {
    try {
      final result =
          await SQLiteService.instance.getProductsByCategory(category);
      return result;
    } catch (e) {
      throw CustomError(e.toString());
    }
  }

  Future<List<Product>> searchLocalProducts(String name) async {
    try {
      final result = await SQLiteService.instance.searchProducts(name);
      return result;
    } catch (e) {
      throw CustomError(e.toString());
    }
  }

  Future<void> addAllLocalProduct(List<Product> products) async {
    try {
      await SQLiteService.instance.insertAllProduct(products);
    } catch (e) {
      throw CustomError(e.toString());
    }
  }

  Future<void> removeAllLocalProduct() async {
    try {
      await SQLiteService.instance.removeAllProduct();
    } catch (e) {
      throw CustomError(e.toString());
    }
  }
}
