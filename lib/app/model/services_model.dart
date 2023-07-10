import 'package:door_hub/app/data/constants/constants.dart';
import 'package:door_hub/app/model/category_model.dart';

class ServicesModel {
  String id;
  String image;
  String name;
  CategoryModel category;
  ServicesModel({
    required this.id,
    required this.image,
    required this.name,
    required this.category,
  });
}

List<ServicesModel> cleaningServices = [
  ServicesModel(
      id: '1',
      image: AppAssets.kCleaningService1,
      name: 'Home Cleaning',
      category: categories[4]),
  ServicesModel(
      id: '2',
      image: AppAssets.kCleaningService2,
      name: 'Carpet Cleaning',
      category: categories[4]),
  ServicesModel(
      id: '3',
      image: AppAssets.kCleaningService3,
      name: 'House Cleaning',
      category: categories[4]),
];

String loremIpsumText =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis nulla at dapibus ultricies. Suspendisse id massa eget dolor luctus hendrerit eu ac dui.';
