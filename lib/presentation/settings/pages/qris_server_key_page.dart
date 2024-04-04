import 'package:flutter/material.dart';
import 'package:pos_front_end/core/widgets/spaces.dart';

import '../../../core/widgets/buttons.dart';
import '../../../core/widgets/custom_text_field.dart';
import '../../../core/constants/app_colors.dart';
import '../../../data/services/shared_prefs_service.dart';

class QrisServerKeyPage extends StatefulWidget {
  static String route = '/qris_server_key';

  const QrisServerKeyPage({super.key});

  @override
  State<QrisServerKeyPage> createState() => _QrisServerKeyPageState();
}

class _QrisServerKeyPageState extends State<QrisServerKeyPage> {
  final TextEditingController _serverKeyController = TextEditingController();

  String? _serverKey;

  Future<void> _getServerKey() async {
    _serverKey = await SharedPrefsService.getMitransServerKey();
  }

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _getServerKey();
      _serverKeyController.text = _serverKey!;
    });
  }

  @override
  void dispose() {
    _serverKeyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QRIS Server Key'),
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
            controller: _serverKeyController,
            label: 'Server Key',
          ),
          const SpaceHeight(height: 24.0),
          Button.filled(
            label: 'Simpan',
            onPressed: () async {
              await SharedPrefsService.saveMidtransServerKey(
                  _serverKeyController.text);
              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Server Key berhasil disimpan'),
                    backgroundColor: AppColors.black,
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
