import 'package:flutter/material.dart';
import 'package:project/Screans/productPage.dart';
import 'package:project/core/custom_appabar.dart';
import 'package:project/widgets/custom_navigation_bar.dart';
import 'package:project/widgets/genirate_text_fild.dart';

class HomePage extends StatelessWidget {
  static String id = 'HomePage';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: const Column(
        children: [
          GenirateTextFild(),
          Expanded(child: productPage()),
        ],
      ),
      bottomNavigationBar: const CustomButtonNavigatorBar(),
    );
  }
}
