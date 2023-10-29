import 'package:ecomerce_app/models/product_models.dart';
import 'package:ecomerce_app/widgets/product_card.dart';
import 'package:flutter/material.dart';

class ProductCarsousel extends StatelessWidget {
  final List<Product> products;
  const ProductCarsousel({
    required this.products,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 165.0,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(
              horizontal: 20.0, 
              vertical: 10.0,),
          itemCount: products.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: ProductCard(product: products[index],),
            );
          }),
    );
  }
}
