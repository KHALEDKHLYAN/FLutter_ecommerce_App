import 'package:ecomerce_app/models/category_models.dart';
import 'package:ecomerce_app/models/product_models.dart';
import 'package:flutter/material.dart';

class HeroCarsouselcard extends StatelessWidget {
  final Category? category;
  final Product? product;

  const HeroCarsouselcard({
    super.key,
    this.product,
    this.category,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // ignore: unnecessary_this
        if(this.product == null){
          Navigator.pushNamed(
          context,
          '/catalog',
          arguments: category,
        );
        }
        
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 5.0,
          vertical: 20,
        ),
        child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
            child: Stack(
              children: <Widget>[
                Image.network(
                  product == null ?
                  category!.imageUrl : product!.imageUrl,
                    fit: BoxFit.cover, 
                    width: 1000.0,
                    ),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(200, 0, 0, 0),
                          Color.fromARGB(0, 0, 0, 0)
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                    child: Text(
                      product == null ?
                  category!.name : product!.name,
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
