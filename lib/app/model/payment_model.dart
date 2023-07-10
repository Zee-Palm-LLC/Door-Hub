import 'package:flutter/material.dart';
import 'package:door_hub/app/data/constants/constants.dart';

class PaymentModel {
  String id;
  String image;
  String cardNumber;
  String expireDate;
  Color color;
  PaymentModel({
    required this.id,
    required this.image,
    required this.cardNumber,
    required this.expireDate,
    required this.color,
  });
}

List<PaymentModel> paymentMethods = [
  PaymentModel(
      id: '1',
      image: AppAssets.kMasterCard,
      cardNumber: '*********5321',
      expireDate: 'Exp 04/2023',
      color: const Color(0xFFFFD88D)),
  PaymentModel(
      id: '2',
      image: AppAssets.kVisa,
      cardNumber: '*********3426',
      expireDate: 'Exp 04/2023',
      color: const Color(0xFFB1E5FC)),
];
