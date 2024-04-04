import 'package:shared_preferences/shared_preferences.dart';

import '../../presentation/settings/models/profile_store_model.dart';
import '../models/response/auth_response_model.dart';

class SharedPrefsService {
  static const _authData = 'auth_data';
  static const _serverKey = 'server_key';
  static const _profileStore = 'profile_store';

  static Future<void> saveAuthData(AuthResponseModel authResponseModel) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_authData, authResponseModel.toJson());
  }

  static Future<void> removeAuthData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_authData);
  }

  static Future<AuthResponseModel> getAuthData() async {
    final prefs = await SharedPreferences.getInstance();
    final authData = prefs.getString(_authData);

    return AuthResponseModel.fromJson(authData!);
  }

  static Future<bool> isAuth() async {
    final prefs = await SharedPreferences.getInstance();
    final authData = prefs.getString(_authData);

    return authData != null;
  }

  static Future<void> saveMidtransServerKey(String serverKey) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_serverKey, serverKey);
  }

  static Future<String> getMitransServerKey() async {
    final prefs = await SharedPreferences.getInstance();
    final serverKey = prefs.getString(_serverKey);
    return serverKey ?? '';
  }

  static Future<void> saveProfileStore(ProfileStoreModel profileStore) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_profileStore, profileStore.toJson());
  }

  static Future<ProfileStoreModel> getProfileStore() async {
    final prefs = await SharedPreferences.getInstance();
    final String? profileStore = prefs.getString(_profileStore);
    if (profileStore != null && profileStore.isNotEmpty) {
      return ProfileStoreModel.fromJson(profileStore);
    } else {
      return ProfileStoreModel(storeName: '', storeAddress: '', tagline: '');
    }
  }
}
