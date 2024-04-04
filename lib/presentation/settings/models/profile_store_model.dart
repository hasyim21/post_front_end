import 'dart:convert';

class ProfileStoreModel {
  final String storeName;
  final String tagline;
  final String storeAddress;

  ProfileStoreModel(
      {required this.storeName,
      required this.tagline,
      required this.storeAddress});

  Map<String, dynamic> toMap() {
    return {
      'store_name': storeName,
      'tagline': tagline,
      'store_address': storeAddress,
    };
  }

  factory ProfileStoreModel.fromMap(Map<String, dynamic> map) {
    return ProfileStoreModel(
      storeName: map['store_name'] ?? '',
      tagline: map['tagline'] ?? '',
      storeAddress: map['store_address'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ProfileStoreModel.fromJson(String source) =>
      ProfileStoreModel.fromMap(json.decode(source));

  @override
  String toString() =>
      'ProfileStoreModel(storeName: $storeName, tagline: $tagline, storeAddress: $storeAddress)';
}
