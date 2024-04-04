import 'package:flutter/material.dart';

import '../../../core/widgets/buttons.dart';
import '../../../core/widgets/custom_text_field.dart';
import '../../../core/widgets/spaces.dart';
import '../../../core/constants/app_colors.dart';
import '../../../data/services/shared_prefs_service.dart';
import '../models/profile_store_model.dart';

class ProfileStorePage extends StatefulWidget {
  static String route = '/profile_store';

  const ProfileStorePage({super.key});

  @override
  State<ProfileStorePage> createState() => _ProfileStorePageState();
}

class _ProfileStorePageState extends State<ProfileStorePage> {
  final TextEditingController _storeNameController = TextEditingController();
  final TextEditingController _taglineController = TextEditingController();
  final TextEditingController _storeAddressController = TextEditingController();

  ProfileStoreModel? _profileStore;

  Future<void> _getProfileStore() async {
    _profileStore = await SharedPrefsService.getProfileStore();
  }

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _getProfileStore();
      _storeNameController.text = _profileStore!.storeName;
      _taglineController.text = _profileStore!.tagline;
      _storeAddressController.text = _profileStore!.storeAddress;
    });
  }

  @override
  void dispose() {
    _storeNameController.dispose();
    _taglineController.dispose();
    _storeAddressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Toko'),
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
            label: 'Nama Toko',
            controller: _storeNameController,
          ),
          const SpaceHeight(),
          CustomTextField(
            label: 'Tagline',
            controller: _taglineController,
          ),
          const SpaceHeight(),
          CustomTextField(
            label: 'Alamat',
            controller: _storeAddressController,
          ),
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
                child: Button.filled(
                  label: 'Simpan',
                  onPressed: () async {
                    final profileStore = ProfileStoreModel(
                      storeName: _storeNameController.text,
                      tagline: _taglineController.text,
                      storeAddress: _storeAddressController.text,
                    );

                    await SharedPrefsService.saveProfileStore(profileStore);

                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Profile toko berhasil disimpan'),
                          backgroundColor: AppColors.black,
                        ),
                      );
                    }
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
