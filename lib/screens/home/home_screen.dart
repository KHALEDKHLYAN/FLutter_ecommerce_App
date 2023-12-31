import 'package:ecomerce_app/models/models.dart';
import 'package:ecomerce_app/widgets/custom_appbar.dart';
import 'package:ecomerce_app/widgets/custom_navbar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecomerce_app/widgets/hero_carsouselcard.dart';
// import 'package:ecomerce_app/widgets/product_card.dart';
import 'package:ecomerce_app/widgets/product_carsouselcard.dart';
import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:ecomerce_app/models/product_models.dart';

import '../../widgets/section_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Zero To Unicorn'),
      bottomNavigationBar: const CustomNavBar(),
      // ignore: avoid_unnecessary_containers
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 1.5,
                viewportFraction: 0.9,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
                enlargeCenterPage: true,
              ),
              items: Category.categories
                  .map((category) => HeroCarsouselcard(category: category))
                  .toList(),
            ),
            const SectionTile(title: 'RECOMMENDED'),
            ProductCarsousel(
              products: Product.products
                  .where((product) => product.isRecommended)
                  .toList(),
            ),
            const SectionTile(title: 'MOST POPULAR'),
            ProductCarsousel(
              products: Product.products
                  .where((product) => product.isPopular)
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
