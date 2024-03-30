
import 'package:fixmasters_user_app/model/location_model.dart';
import 'package:fixmasters_user_app/model/service_category_model.dart';
import 'package:fixmasters_user_app/model/service_providers_model.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class ServiceProvidersController extends GetxController{
  RxList<ServiceProviderModel> providers = <ServiceProviderModel>[].obs;

  Future<List<ServiceProviderModel>> fetchNearestProviders(LocationModel location) async {
    // Simulate a delay to mimic network fetch
    // await Future.delayed(Duration(seconds: 1)); //TODO: ADD BETTER PROGRESSBAR

    // Replace this with logic to fetch foods for a specific restaurant from an API or another source
    // For now, returning demo data
    List<ServiceProviderModel> serviceProviderList = [
      ServiceProviderModel(
        providerId: '1',
        providerName: 'Electrician Experts',
        category: <ServiceCategoryModel>[
          ServiceCategoryModel(
              categoryId: '1245',
              categoryIcon: 'testinCategory',
              categoryName: 'Cleaning'
          )
        ],
        description: 'We provide expert electrical services for both residential and commercial buildings.',
        workLocation: LocationModel(latitude: 123.456, longitude: 789.012, address: 'Summit', city: 'Addis Ababa'),
        imageUrl: 'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww',
        phoneNumber: '123-456-7890',
        rating: 4.5,
        isAvailable: true,
      ),
      ServiceProviderModel(
        providerId: '2',
        providerName: 'Plumbing Pros',
        category: <ServiceCategoryModel>[
          ServiceCategoryModel(
              categoryId: '1290',
              categoryIcon: 'testinCategory',
              categoryName: 'Painting'
          )
        ],
        description: 'Your go-to plumbers for all your plumbing needs. Available 24/7.',
        workLocation: LocationModel(latitude: 456.789, longitude: 987.654, address: 'Bole', city: 'Addis Ababa'),
        imageUrl: 'https://images.inc.com/uploaded_files/image/1920x1080/getty_481292845_77896.jpg',
        phoneNumber: '987-654-3210',
        rating: 4.8,
        isAvailable: true,
      ),
      ServiceProviderModel(
        providerId: '3',
        providerName: 'Handyman Helpers',
        category: <ServiceCategoryModel>[
          ServiceCategoryModel(
              categoryId: '1234',
              categoryIcon: 'testinCategory',
              categoryName: 'Electric'
          )
        ],
        description: 'We provide a wide range of handyman services including repairs, installations, and maintenance.',
        workLocation: LocationModel(latitude: 789.012, longitude: 654.321, address: 'Akaki', city: 'Addis Ababa'),
        imageUrl: 'https://media.proprofs.com/images/QM/user_images/2503852/-Type-Of-Person-.webp',
        phoneNumber: '456-789-0123',
        rating: 4.3,
        isAvailable: false,
      ),
      ServiceProviderModel(
        providerId: '4',
        providerName: 'Cleaning Crew',
        category: <ServiceCategoryModel>[
          ServiceCategoryModel(
              categoryId: '1236',
              categoryIcon: 'testinCategory',
              categoryName: 'Plumber'
          )
        ],
        description: 'Professional cleaning services for homes and offices. We make your space shine!',
        workLocation: LocationModel(latitude: 135.792, longitude: 246.801, address: 'Saris', city: 'Addis Ababa'),
        imageUrl: 'https://t3.ftcdn.net/jpg/03/02/88/46/360_F_302884605_actpipOdPOQHDTnFtp4zg4RtlWzhOASp.jpg',
        phoneNumber: '789-012-3456',
        rating: 4.7,
        isAvailable: true,
      )
    ];

    // Assign fetched foods to the RxList
    providers.assignAll(serviceProviderList);

    // Return the fetched foods
    return serviceProviderList;
  }

}