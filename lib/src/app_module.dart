import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

/// Kontrak modul yang wajib diimplementasikan oleh setiap app-mod-*.
abstract class AppModule {
  String get id;
  String get name;
  IconData get icon;
  List<RouteBase> get routes;
  Widget? get homeCard;
}
