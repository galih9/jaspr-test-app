---
marp: true
theme: default
paginate: true
---

# Mengenal Jaspr 🚀
### Framework Web Modern untuk Developer Dart

---

## 1. Kenapa Jaspr Ada? 🤔

- **Keterbatasan Flutter Web:** Flutter Web menggunakan Canvas/WebGL yang merender seluruh UI sebagai satu "gambar". Ini menyebabkan masalah pada SEO, ukuran bundle awal yang besar, dan performa di perangkat rendah.
- **Kombinasi Terbaik:** Jaspr hadir untuk memberikan pengalaman *development* yang familiar bagi *developer* Flutter (menggunakan Dart dan struktur komponen yang mirip Widget), namun merender hasilnya sebagai HTML/CSS standar (DOM).
- **Fokus pada Web Sejati:** Memberdayakan *developer* Dart untuk membangun website sesungguhnya (bukan aplikasi web canvas) dengan dukungan Server-Side Rendering (SSR).

---

## 2. Perbedaan Flutter Web dan Jaspr ⚖️

| Fitur | Flutter Web | Jaspr |
| :--- | :--- | :--- |
| **Rendering** | CanvasKit / WebGL / HTML (Custom) | Standar HTML / DOM / CSS |
| **Ukuran Bundle (Awal)** | Besar (~1.5MB+ karena Engine) | Sangat Kecil (Hanya kode Dart yang dicompile) |
| **SEO** | Buruk (Konten susah dibaca *crawler*) | Sangat Baik (Teks asli HTML) |
| **Aksesibilitas** | Membutuhkan *semantic tree* terpisah | Terbawa langsung dari tag HTML standar |
| **Server-Side Rendering** | Tidak didukung | Didukung Penuh (SSR & SSG) |

---

## 3. Kelebihan Jaspr 🌟

✅ **SEO Friendly:** Karena menggunakan HTML asli, *search engine* dapat mengindeks konten dengan mudah.
✅ **Server-Side Rendering (SSR):** Mendukung SSR *out-of-the-box*, membuat *loading* halaman jauh lebih cepat.
✅ **Familiar bagi Developer Flutter:** Menggunakan konsep mirip *Widget* (bernama Component), *build methods*, dan *state management*.
✅ **Performa Tinggi:** Tidak perlu memuat Flutter Engine, waktu *load* sangat singkat.
✅ **Integrasi Ekosistem Web:** Mudah diintegrasikan dengan library JS, CSS framework, dan standar web lainnya.

---

## 4. Kekurangan Jaspr 📉

❌ **Komunitas & Ekosistem Masih Kecil:** Belum sebesar Flutter, sehingga resource, tutorial, dan komunitas masih terbatas.
❌ **Tidak Bisa Menggunakan Widget Flutter:** Anda tidak bisa sekadar *copy-paste* UI dari Flutter (seperti `MaterialApp`, `Scaffold`, atau animasi kompleks Flutter) karena Jaspr tidak menggunakan engine Flutter.
❌ **Mengelola CSS Secara Manual:** Meskipun mirip Flutter, untuk *styling* Anda harus lebih memahami CSS standar ketimbang `BoxDecoration` atau properti *Widget* Flutter.
❌ **Masih Baru (Early Stage):** Framework ini masih terus berkembang dan mungkin mengalami *breaking changes* di masa depan.

---

## 5. Package / Plugin Flutter di Jaspr 📦

**Bagaimana nasib package Flutter jika memakai Jaspr?**

- **Package Murni Dart (✅ BISA):** Package yang tidak bergantung pada antarmuka UI atau ekosistem Flutter (contoh: `http`, `dio`, `equatable`, `riverpod`, `bloc` versi murni Dart) dapat digunakan di Jaspr dengan lancar.
- **Plugin/Package UI Flutter (❌ TIDAK BISA):** Package yang memerlukan antarmuka UI Flutter (contoh: `google_fonts` versi Flutter, `provider` versi Flutter, animasi khusus Flutter) **tidak bisa** digunakan karena Jaspr berjalan tanpa Flutter Engine.
- **Ekosistem Tersendiri:** Jaspr memiliki adapter atau library tersendiri untuk berbagai kebutuhan web (contoh: *jaspr_router*, *jaspr_riverpod*).

---

## 6. Tailwind dengan Jaspr 🎨

- **Perfect Combination** Jaspr merender elemen menjadi DOM HTML biasa, sehingga kita bisa dengan bebas menyematkan **Tailwind CSS**.
- **Utility Classes di Dart:** Anda dapat menggunakan kelas-kelas Tailwind langsung pada komponen Jaspr (dengan menggunakan properti `classes` atau `classes: 'bg-blue-500 text-white'`).
- **Development Cepat:** Daripada menulis file `.css` terpisah atau mendefinisikan *styling* di Dart, Anda mendapatkan pengalaman *styling* instan dan responsif ala Tailwind.
- **Workflow:** Sangat mudah diintegrasikan karena bisa dikonfigurasi langsung dengan PostCSS layaknya proyek web biasa.
