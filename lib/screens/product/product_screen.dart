import 'package:ecomerce_app/models/models.dart';
import 'package:ecomerce_app/widgets/custom_appbar.dart';
import 'package:ecomerce_app/widgets/custom_navbar.dart';
import 'package:ecomerce_app/widgets/hero_carsouselcard.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  static const String routeName = '/product';

 static Route route({required Product product}) {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => ProductScreen(product: product),
    );
  }

  final Product product;

  const ProductScreen({super.key, 
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  CustomAppBar(title: product.name),
      bottomNavigationBar: const CustomNavBar(),
      body: HeroCarsouselcard(
        product: product,),
    );
  }
}
