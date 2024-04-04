import 'package:sqflite/sqflite.dart';

import '../../core/utils/custom_error.dart';
import '../../presentation/home/models/order_item.dart';
import '../../presentation/order/models/order_model.dart';
import '../../presentation/settings/models/voucher_model.dart';
import '../models/request/order_request_model.dart';
import '../models/response/product_response_model.dart';

class SQLiteService {
  SQLiteService._init();

  static final SQLiteService instance = SQLiteService._init();

  final String dbName = 'pos.db';
  final String tableProducts = 'products';
  final String tableOrders = 'orders';
  final String tableOrderItems = 'oder_items';
  final String tableVouchers = 'vouchers';

  static Database? _database;

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = dbPath + filePath;

    return await openDatabase(
      path,
      version: 1,
      onCreate: _createDB,
    );
  }

  Future<void> _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE $tableProducts(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        product_id INTEGER,
        name TEXT,
        price INTEGER,
        stock INTEGER,
        category TEXT,
        image TEXT,
        is_favorite INTEGER
      )
    ''');

    await db.execute('''
      CREATE TABLE $tableOrders(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        orders TEXT,
        payment_method TEXT,
        payment_amount INTEGER,
        change_amount INTEGER,
        total_item INTEGER,
        subtotal_produk INTEGER,
        total_price INTEGER,
        discount INTEGER,
        cashier_id INTEGER,
        cashier_name TEXT,
        transaction_time TEXT,
        is_sync INTEGER DEFAULT 0
      )
    ''');

    await db.execute('''
      CREATE TABLE $tableOrderItems(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        order_id INTEGER,
        product_id INTEGER,
        quantity INTEGER,
        price INTEGER
      )
    ''');

    await db.execute('''
      CREATE TABLE $tableVouchers(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        voucher_name TEXT,
        voucher_code TEXT,
        discount_percentage INTEGER,
        expired_date TEXT
      )
    ''');
  }

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB(dbName);
    return _database!;
  }

  // product
  Future<List<Product>> getProducts() async {
    try {
      final db = await instance.database;
      final result = await db.query(tableProducts);
      return result.map((e) => Product.fromMap(e)).toList();
    } catch (e) {
      throw CustomError('Failed load data products');
    }
  }

  Future<List<Product>> getProductsByCategory(String category) async {
    try {
      final db = await instance.database;
      final result = await db.query(
        tableProducts,
        where: 'category = ?',
        whereArgs: [category],
      );
      return result.map((e) => Product.fromMap(e)).toList();
    } catch (e) {
      throw CustomError('Failed load data category of products');
    }
  }

  Future<List<Product>> searchProducts(String name) async {
    try {
      final db = await instance.database;
      final result = await db.query(
        tableProducts,
        where: 'LOWER(name) LIKE ?',
        whereArgs: ['%${name.toLowerCase()}%'],
      );
      return result.map((e) => Product.fromMap(e)).toList();
    } catch (e) {
      throw CustomError('Failed search products');
    }
  }

  Future<void> insertAllProduct(List<Product> products) async {
    final db = await instance.database;
    for (var product in products) {
      await db.insert(tableProducts, product.toLocalMap());
    }
  }

  Future<void> removeAllProduct() async {
    final db = await instance.database;
    await db.delete(tableProducts);
  }

  //save order
  Future<int> saveOrder(OrderModel order) async {
    final db = await instance.database;
    int id = await db.insert(tableOrders, order.toMapForLocal());
    for (var orderItem in order.orders) {
      await db.insert(tableOrderItems, orderItem.toMapForLocal(id));
    }
    return id;
  }

  //get order by isSync = 0
  Future<List<OrderModel>> getOrderByIsSync() async {
    try {
      final db = await instance.database;
      final result = await db.query(tableOrders, where: 'is_sync = 0');

      return result.map((e) => OrderModel.fromLocalMap(e)).toList();
    } catch (e) {
      throw CustomError('Failed load order by is sync');
    }
  }

  //update isSync order by id
  Future<int> updateIsSyncOrderById(int id) async {
    try {
      final db = await instance.database;
      return await db.update(tableOrders, {'is_sync': 1},
          where: 'id = ?', whereArgs: [id]);
    } catch (e) {
      throw CustomError('Failed to update is sync order by id');
    }
  }

  //get all orders
  Future<List<OrderModel>> getHistoryOrder() async {
    try {
      final db = await instance.database;
      final result = await db.query(tableOrders, orderBy: 'id DESC');
      return result.map((e) => OrderModel.fromLocalMap(e)).toList();
    } catch (e) {
      throw CustomError('Failed load history orders');
    }
  }

  //get order item by id order
  Future<List<OrderItemModel>> getOrderItemByOrderIdLocal(int idOrder) async {
    try {
      final db = await instance.database;
      final result =
          await db.query(tableOrderItems, where: 'order_id = $idOrder');

      return result.map((e) => OrderItem.fromMapLocal(e)).toList();
    } catch (e) {
      throw CustomError('Failed load order item by order id');
    }
  }

  // voucher
  Future<List<VoucherModel>> getVouchers() async {
    try {
      final db = await instance.database;
      final result = await db.query(tableVouchers);
      return result.map((e) => VoucherModel.fromMap(e)).toList();
    } catch (e) {
      throw CustomError('Failed to load vouchers');
    }
  }

  Future<void> insertVoucher(VoucherModel voucher) async {
    try {
      final db = await instance.database;
      await db.insert(tableVouchers, voucher.toMap());
    } catch (e) {
      throw CustomError('Failed insert voucher');
    }
  }

  Future<void> deleteVoucher(int id) async {
    try {
      final db = await instance.database;
      await db.delete(tableVouchers, where: 'id = ?', whereArgs: [id]);
    } catch (e) {
      throw CustomError('Failed delete voucher');
    }
  }

  Future<void> deleteExpiredVouchers(String expiredDate) async {
    try {
      final db = await instance.database;
      await db.delete(tableVouchers,
          where: 'expired_date = ?', whereArgs: [expiredDate]);
    } catch (e) {
      throw CustomError('Failed delete expired voucher');
    }
  }
}
