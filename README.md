# core_ui

Package Dart fondasi antarmuka untuk super app Gumpalan: palet warna resmi, konfigurasi `ThemeData` terang dan gelap, serta kontrak modular `AppModule`.

## Struktur

```
lib/
├── core_ui.dart
└── src/
    ├── app_module.dart            # Kontrak abstrak modul aplikasi
    ├── theme/
    │   ├── app_theme.dart         # Konfigurasi ThemeData terang dan gelap
    │   └── colors.dart            # Definisi konstanta palet warna Gumpalan
    └── widgets/
        └── .gitkeep
```

## Palet Warna Gumpalan

- `background`: `#8BE04E`
- `dark`: `#0B1410`
- `darkGreen900`: `#14452A`
- `darkGreen800`: `#1F6B3A`
- `green700`: `#2E9C4A`
- `green500`: `#5FD068`
- `creamLight`: `#F2FFC4`
- `cream`: `#D9FF8A`

## Kontrak AppModule

Setiap modul fitur (`app-mod-*`) wajib mengimplementasikan antarmuka `AppModule`:

```dart
abstract class AppModule {
  String get id;
  String get name;
  IconData get icon;
  List<RouteBase> get routes;
  Widget? get homeCard;
}
```

## Lisensi dan Dependensi

Lisensi repositori ini **belum ditentukan**.

### Dependensi Langsung:
- `go_router` (BSD-3-Clause) - Pustaka perutean deklaratif Flutter.

### Memeriksa Lisensi:
Periksa berkas `pubspec.lock` atau gunakan perintah:
```bash
flutter pub pub run -- flutter pub deps
```
