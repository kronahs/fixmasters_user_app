import 'package:fixmasters_user_app/model/service_providers_model.dart';
import 'package:fixmasters_user_app/view/widgets/availabilityChip.dart';
import 'package:flutter/material.dart';

class ServiceProvidersCard extends StatelessWidget {
  final ServiceProviderModel serviceProviderModel;

  const ServiceProvidersCard({Key? key, required this.serviceProviderModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
        ),
        leading: CircleAvatar(
          radius: 28,
          backgroundColor: Theme.of(context).colorScheme.secondary,
          foregroundImage: NetworkImage(serviceProviderModel.imageUrl),
        ),
        title: Text(serviceProviderModel.providerName),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${serviceProviderModel.category.first.categoryName}', style: Theme.of(context).textTheme.bodySmall,), // Display category name
            SizedBox(height: 2),
            Row(
              children: [
                Icon(Icons.location_pin, size: 16, color: Theme.of(context).colorScheme.onBackground,),
                Text('2km', style: Theme.of(context).textTheme.labelMedium,)
              ],
            ),
            SizedBox(height: 4),
          ],
        ),
        trailing: Container(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.star, color: Colors.amber, size: 16,),
                  SizedBox(width: 4),
                  Text(serviceProviderModel.rating.toString()), // Display rating
                ],
              ),

              // AvailabilityChip(isAvailable: true)
            ],
          ),
        ),
        onTap: (){},
      ),
    );
  }
}
