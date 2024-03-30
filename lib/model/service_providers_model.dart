import 'package:fixmasters_user_app/model/location_model.dart';
import 'package:fixmasters_user_app/model/service_category_model.dart';
import 'package:flutter/foundation.dart';

class ServiceProviderModel {
  final String providerId;
  final String providerName;
  final List<ServiceCategoryModel> category;
  final String description;
  final LocationModel workLocation;
  final String imageUrl;
  final String phoneNumber;
  final double rating;
  final bool isAvailable;

  ServiceProviderModel({
    required this.providerId,
    required this.providerName,
    required this.category,
    required this.description,
    required this.workLocation,
    required this.imageUrl,
    required this.phoneNumber,
    required this.rating,
    required this.isAvailable,
  });
}
