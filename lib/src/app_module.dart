import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

/// Item menu modular yang dirender pada tab "Menu" oleh shell aplikasi.
/// Saat item disentuh, [onOpen] dipanggil dengan context menu; bila kosong
/// dan [path] ada, shell melakukan `context.push(path)`.
class MenuEntry {
  final String id;
  final String label;
  final IconData icon;
  final String? path;
  final void Function(BuildContext context)? onOpen;

  const MenuEntry({
    required this.id,
    required this.label,
    required this.icon,
    this.path,
    this.onOpen,
  });
}

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

  /// Item menu modular yang ditampilkan pada tab "Menu" shell (opsional).
  List<MenuEntry> get menuEntries => const [];

  /// Tampilan layar utama modul ketika aktif sebagai modul utama.
  Widget get homeScreen;
}
