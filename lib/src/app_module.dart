import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

/// Kontrak antarmuka modul fitur yang wajib diimplementasikan oleh setiap modul (`app-mod-*`).
abstract class AppModule {
  /// Pengenal unik modul (misal: 'iot', 'chat', 'settings').
  String get id;

  /// Nama tampilan modul yang ramah pengguna.
  String get name;

  /// Ikon representasi modul pada navigasi antarmuka.
  IconData get icon;

  /// Daftar definisi rute [RouteBase] yang didaftarkan ke router utama.
  List<RouteBase> get routes;

  /// Widget kartu ringkasan untuk beranda komposit (opsional).
  Widget? get homeCard;

  /// Tampilan layar utama modul ketika aktif sebagai modul utama.
  Widget get homeScreen;
}
