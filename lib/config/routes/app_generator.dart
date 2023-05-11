import 'package:flutter/material.dart';


import '../../presentation/screens/search/search_screen.dart';
import 'app_routes.dart';
class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      //onBoard
      case Routes.searchRoute:
        return MaterialPageRoute(builder: (_) =>
            SearchScreen());




      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
          appBar: AppBar(
            title: const Text('no found'),
          ),
          body: const Center(child: Text('no found')),
        ));
  }}