import 'package:door_hub/app/data/constants/constants.dart';

class UserModel {
  String id;
  String name;
  String profilePic;
  UserModel({
    required this.id,
    required this.name,
    required this.profilePic,
  });
}

UserModel serviceProvider = UserModel(
    id: '1', name: 'WestingHouse', profilePic: AppAssets.kServiceProvider);
