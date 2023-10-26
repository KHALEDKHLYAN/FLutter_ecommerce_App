import 'package:ecomerce_app/widgets/custom_appbar.dart';
import 'package:ecomerce_app/widgets/custom_navbar.dart';
import 'package:flutter/material.dart';

class WIshlistScreen extends StatelessWidget {
  const WIshlistScreen({super.key});
  static const String routeName = '/';

  static Route route(){
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => WIshlistScreen());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'WishList'),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
