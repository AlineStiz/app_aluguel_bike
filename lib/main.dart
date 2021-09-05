import 'package:flutter/material.dart';
import 'package:mvp_app_aluguel_bikes/Screens/bike_details_screen.dart';
import 'package:mvp_app_aluguel_bikes/Screens/bikes_overview_screen.dart';
import 'package:mvp_app_aluguel_bikes/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BikeOverviewScreen(),
      routes: {
        AppRoutes.BIKE_DETAIL: (context) => BikeDetailsScreen(),
      },
    );
  }
}
