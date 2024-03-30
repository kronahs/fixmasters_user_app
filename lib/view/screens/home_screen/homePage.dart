import 'package:fixmasters_user_app/controller/service_provider_controller.dart';
import 'package:fixmasters_user_app/model/location_model.dart';
import 'package:fixmasters_user_app/model/service_providers_model.dart';
import 'package:fixmasters_user_app/view/screens/home_screen/heroWidget.dart';
import 'package:fixmasters_user_app/view/widgets/categoryCard.dart';
import 'package:fixmasters_user_app/view/widgets/serviceProviderCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key});

  List<String> imageUrl = [
    "https://static.vecteezy.com/system/resources/previews/014/401/048/non_2x/repair-works-professional-construction-service-free-vector.jpg",
    "https://cdn.iser.vc/static/articles/banners/2020/handyman1.jpg"
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 14.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Hello! Octavian'),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.notifications_none),
                    )
                  ],
                ),
                Text(
                  'What Service do you \nneed today?',
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(height: 16),
                HeroWidget(imageUrls: imageUrl),
                SizedBox(height: 18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Categories', style: Theme.of(context).textTheme.bodyText1),
                    TextButton(onPressed: () {}, child: Text('See all'))
                  ],
                ),
                SizedBox(height: 8),
                // Wrap CategoryCard widgets with a ListView and add horizontal padding
// Wrap the ListView with a Container and provide a fixed height
                Container(
                  height: 100, // Adjust the height according to your needs
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      InkWell( onTap: (){},child: CategoryCard(iconData: Icons.format_paint, categoryName: 'Painting')),
                      SizedBox(width: 8), // Add spacing between cards
                      CategoryCard(iconData: Icons.clean_hands, categoryName: 'Cleaning'),
                      SizedBox(width: 8), // Add spacing between cards
                      CategoryCard(iconData: Icons.electric_bolt, categoryName: 'Electric'),
                      SizedBox(width: 8), // Add spacing between cards
                      CategoryCard(iconData: Icons.electric_bolt, categoryName: 'Electric'),
                      SizedBox(width: 8), // Add spacing between cards
                      CategoryCard(iconData: Icons.more_vert_outlined, categoryName: 'More'),
                    ],
                  ),
                ),

                SizedBox(height: 14),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Service Providers Near you', style: Theme.of(context).textTheme.bodyText1),
                    TextButton(onPressed: () {}, child: Text('See all'))
                  ],
                ),
                SizedBox(height: 8),

                Container(
                  height: MediaQuery.of(context).size.height,
                  child: GetX<ServiceProvidersController>(
                    builder: (providerController) {
                      LocationModel location = LocationModel(latitude: 234, longitude: 423, address: 'dfsd', city: 'dfd');
                      providerController.fetchNearestProviders(location);

                      return ListView.builder(
                        // scrollDirection: Axis.horizontal,
                        itemCount: providerController.providers.length,
                        itemBuilder: (context, index) {
                          // Access the service provider model at the current index

                          ServiceProviderModel serviceProvider = providerController.providers[index];

                          // Return a ServiceProvidersCard widget for each service provider
                          return ServiceProvidersCard(serviceProviderModel: serviceProvider);
                        },
                      );
                    },
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
