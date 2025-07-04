import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:project/Screans/HomePage.dart';
import 'package:project/Screans/Update_product.dart';
import 'package:project/Screans/cart_page.dart';
import 'package:project/cubit/cart_cubit.dart';
import 'package:project/cubit/product_cubit.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox<String>('test');
  runApp(DevicePreview(builder: (BuildContext context) => StoreApp()));
}

class StoreApp extends StatefulWidget {
  StoreApp();

  @override
  State<StoreApp> createState() => _StoreAppState();
}

class _StoreAppState extends State<StoreApp> {
  String? token;
  @override
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ProductCubit()..getProductData()),
        BlocProvider(
          create: (context) => CartCubit()..getCartData(),
        )
      ],
      child: MaterialApp(
        theme: ThemeData(
            iconTheme: const IconThemeData(
                size: 35, color: Color.fromARGB(255, 22, 1, 1))),
        debugShowCheckedModeBanner: false,
        routes: {
          HomePage.id: (context) => const HomePage(),
          UpdateProduct.id: (context) => UpdateProduct(),
          CartPage.id: (context) => const CartPage()
        },
        home: const HomePage(),
      ),
    );
  }
}
