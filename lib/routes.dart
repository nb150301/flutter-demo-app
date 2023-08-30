import 'package:flutter/widgets.dart';
import 'package:my_app/screens/home_screen.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => const HomeScreen(),
};
