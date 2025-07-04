import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project/Screans/cart_page.dart';

class CustomButtonNavigatorBar extends StatelessWidget {
  const CustomButtonNavigatorBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.black, width: 1.3)),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.home,
                )),
            const Spacer(),
            IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
            const Spacer(),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, CartPage.id);
                },
                icon: const Icon(FontAwesomeIcons.cartShopping)),
            const Spacer(),
            IconButton(
                onPressed: () {}, icon: const Icon(FontAwesomeIcons.user)),
          ],
        ),
      ),
    );
  }
}
