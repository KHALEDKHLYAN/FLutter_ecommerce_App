import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget{
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Container(
        color: Colors.black,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: const Text(
          'Zero To Unicorn',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontFamily: 'Avenir',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      iconTheme: const IconThemeData(color: Colors.black),
      actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.favorite))],
    );
  }
  
  Size get preferredSize => const Size.fromHeight(50.0);
}
