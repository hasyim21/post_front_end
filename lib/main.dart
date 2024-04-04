import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.dart';
import 'data/respositories/auth_repository.dart';
import 'data/respositories/order_repository.dart';
import 'data/respositories/payment_repository.dart';
import 'data/respositories/product_repository.dart';
import 'data/respositories/voucher_repository.dart';
import 'data/services/auth_service.dart';
import 'data/services/midtrans_service.dart';
import 'data/services/order_service.dart';
import 'data/services/product_service.dart';
import 'presentation/login/bloc/login_bloc.dart';
import 'presentation/settings/bloc/product/product_bloc.dart';
import 'presentation/settings/bloc/voucher/voucher_bloc.dart';
import 'presentation/transaction/bloc/history/history_bloc.dart';
import 'presentation/home/bloc/checkout/checkout_bloc.dart';
import 'presentation/settings/bloc/logout/logout_bloc.dart';
import 'presentation/settings/bloc/sync_order/sync_order_bloc.dart';
import 'presentation/order/bloc/order/order_bloc.dart';
import 'presentation/order/bloc/qris/qris_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginBloc(
            AuthRepository(
              authService: AuthService(),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => LogoutBloc(
            AuthRepository(
              authService: AuthService(),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => ProductBloc(
            ProductRepository(
              productService: ProductService(),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => CheckoutBloc(),
        ),
        BlocProvider(
          create: (context) => OrderBloc(),
        ),
        BlocProvider(
          create: (context) => QrisBloc(
            PaymentRepository(
              midtransService: MidtransService(),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => HistoryBloc(
            OrderRepository(
              orderService: OrderService(),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => SyncOrderBloc(
            OrderRepository(
              orderService: OrderService(),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => VoucherBloc(
            VoucherRepository(),
          )..add(
              const VoucherEvent.deleteExpiredVouchers(),
            ),
        ),
      ],
      child: const App(),
    );
  }
}
