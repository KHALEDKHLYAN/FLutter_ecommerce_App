import 'package:ecomerce_app/widgets/custom_appbar.dart';
import 'package:ecomerce_app/widgets/custom_navbar.dart';
import 'package:flutter/material.dart';

class WIshlistScreen extends StatelessWidget {
  const WIshlistScreen({super.key});
  static const String routeName = '/';

  static Route route(){
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const WIshlistScreen());
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'WishList'),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
