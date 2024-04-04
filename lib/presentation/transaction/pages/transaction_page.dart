import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/widgets/spaces.dart';
import '../../../core/constants/app_colors.dart';
import '../bloc/history/history_bloc.dart';
import '../widgets/history_transaction_card.dart';

class TransactionPage extends StatefulWidget {
  static String route = '/transaction';

  const TransactionPage({super.key});

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  void initState() {
    super.initState();
    context.read<HistoryBloc>().add(const HistoryEvent.getLocalHistoryOrder());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transaksi'),
        shape: Border(
          bottom: BorderSide(
            width: 1.0,
            color: AppColors.border,
          ),
        ),
      ),
      body: BlocBuilder<HistoryBloc, HistoryState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return const Center(
                child: Text('Tidak ada transaksi'),
              );
            },
            loading: () {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            success: (histories) {
              if (histories.isEmpty) {
                return const Center(
                  child: Text('Tidak ada transaksi'),
                );
              }
              return ListView.separated(
                padding: const EdgeInsets.all(12.0),
                itemCount: histories.length,
                separatorBuilder: (context, index) => const SpaceHeight(),
                itemBuilder: (context, index) => HistoryTransactionCard(
                  history: histories[index],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
