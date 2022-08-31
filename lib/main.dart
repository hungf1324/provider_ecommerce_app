import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_ecommerce_app/data/cart_state.dart';
import '../pages/cart/cart_page.dart';
import '../pages/home/home_page.dart';
import '../pages/production/production_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => cartState,
      child: MaterialApp(
        title: 'Provider Ecommerce App',
        debugShowCheckedModeBanner: false,
        routes: routesList,
        initialRoute: HomePage.routeName,
      ),
    );
  }

  Map<String, WidgetBuilder> get routesList {
    return {
      HomePage.routeName: (context) => const HomePage(),
      ProductionPage.routeName: (context) => const ProductionPage(),
      CartPage.routeName: (context) => const CartPage(),
    };
  }
}
