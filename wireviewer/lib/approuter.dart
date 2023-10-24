import 'package:anywhere_ui/anywhere_ui.dart';
import 'package:wireviewer/view/item_list_view.dart';
import 'package:wireviewer/view/items_detail.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static const String itemListView = "itemListView";
  static const String itemDetailView = "itemDetailView";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case itemListView:
        return MaterialPageRoute(
          builder: (_) => const ItemsListView(),
        );

      case itemDetailView:
        var data = settings.arguments as RelatedTopics;
        return MaterialPageRoute(
          builder: (_) => ItemDetailView(data),
          settings: RouteSettings(name: settings.name),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text("No route defined for ${settings.name}"),
            ),
          ),
        );
    }
  }
}
