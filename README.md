# core_ui

Paket fondasi desain dan antarmuka untuk ekosistem super app Gumpalan: palet warna resmi, konfigurasi `ThemeData` mode terang dan gelap, serta kontrak antarmuka modular `AppModule`.

Paket ini menjamin konsistensi visual dan perutean standar di seluruh modul aplikasi.

---

## Struktur Direktori

```text
app-core-ui/
├── lib/
│   ├── core_ui.dart              # Export publik paket
│   └── src/
│       ├── app_module.dart       # Kontrak antarmuka modul fitur
│       ├── theme/
│       │   ├── app_theme.dart    # Konfigurasi tema terang & gelap Material 3
│       │   └── colors.dart       # Palet warna primer, sekunder, dan netral
│       └── widgets/              # Komponen widget bersama (shared components)
└── test/
    └── core_ui_test.dart         # Pengujian integritas palet warna dan tema
```

---

## Palet Warna Gumpalan

Konstanta warna diakses melalui kelas `GumpalanColors`:

| Nama Properti | Kode Hex | Deskripsi Penggunaan |
| --- | --- | --- |
| `background` | `#8BE04E` | Aksen hijau khas Gumpalan |
| `dark` | `#0B1410` | Latar belakang mode gelap |
| `darkGreen900` | `#14452A` | Elemen permukaan gelap dan kontras |
| `darkGreen800` | `#1F6B3A` | Border dan aksen sekunder gelap |
| `green700` | `#2E9C4A` | Warna primer tombol dan tindakan aktif |
| `green500` | `#5FD068` | Indikator status sukses/aktif |
| `creamLight` | `#F2FFC4` | Permukaan terang dan kartu |
| `cream` | `#D9FF8A` | Latar belakang aksen terang |

---

## Kontrak `AppModule`

Setiap modul fitur (`app-mod-*`) wajib mengimplementasikan antarmuka `AppModule` agar dapat dikenali dan dipasang oleh `app-shell`:

```dart
abstract class AppModule {
  /// Pengenal unik modul (misal: 'iot', 'chat', 'settings').
  String get id;

  /// Nama tampilan modul yang ramah pengguna.
  String get name;

  /// Ikon representasi modul pada navigasi antarmuka.
  IconData get icon;

  /// Daftar definisi rute GoRouter yang didaftarkan ke router utama.
  List<RouteBase> get routes;

  /// Widget kartu ringkasan untuk beranda komposit (opsional).
  Widget? get homeCard;

  /// Tampilan layar utama modul ketika aktif sebagai modul utama.
  Widget get homeScreen;
}
```

---

## Pengujian Otomatis

Jalankan pengujian unit antarmuka:

```bash
flutter test
```

---

## Lisensi dan Dependensi

- `go_router` (BSD-3-Clause) - Pustaka perutean deklaratif Flutter.
- `flutter` SDK (BSD-3-Clause) - Framework inti UI Flutter.
