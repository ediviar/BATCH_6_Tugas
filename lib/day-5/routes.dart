

import 'package:project/day-3/pages/home_page.dart';
import 'package:project/day-4/gridview_builder_page.dart';
import 'package:project/day-4/gridview_count_page.dart';
import 'package:project/day-4/gridview_page.dart';
import 'package:project/day-6/pages/counter_page.dart';

class AppRoutes {
  static const String home = '/';
  static const String gridView = '/gridview';
  static const String gridViewCount = '/gridview-count';
  static const String gridViewBuilder = '/gridview-builder';
  static const String counter = '/counter';
}

final routes = {
  AppRoutes.home: (context) => const HomePage(),
  AppRoutes.gridView: (context) => const GridviewPage(),
  AppRoutes.gridViewCount: (context) => const GridviewCountPage(),
  AppRoutes.gridViewBuilder: (context) => const GridviewBuilderPage(),
  AppRoutes.counter: (context) => const CounterPage(),
};