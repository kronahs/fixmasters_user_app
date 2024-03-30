import 'package:fixmasters_user_app/model/service_providers_model.dart';
import 'package:flutter/material.dart';

class ServiceProvidersCard extends StatelessWidget {
  final ServiceProviderModel serviceProviderModel;

  const ServiceProvidersCard({Key? key, required this.serviceProviderModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        foregroundImage: NetworkImage(serviceProviderModel.imageUrl),
      ),
      title: Text(serviceProviderModel.providerName),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(serviceProviderModel.workLocation.address), // Display address
          SizedBox(height: 4),
          Text('Category: ${serviceProviderModel.category.first.categoryName}'), // Display category name
          SizedBox(height: 4),
          Row(
            children: [
              Icon(Icons.star, color: Colors.amber, size: 20),
              SizedBox(width: 4),
              Text(serviceProviderModel.rating.toString()), // Display rating
            ],
          ),
        ],
      ),
      // Add onTap handler if you want the card to be interactive
      onTap: () {
        // Implement what happens when the card is tapped
      },
    );
  }
}
