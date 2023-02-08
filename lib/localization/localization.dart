import 'package:get/get.dart';

class Languages extends Translations {
  Map<String, Map<String, String>> get keys => {
        "id_ID": {
          // Halaman Utama
          "title_app": "Eco Enzyme",
          "tag_line": "Jadikan Sampah Untuk Lebih Bermanfaat",
          "author": "Dibuat Oleh Team Flutter TI Unila",
          "versi": "Versi 1.0",

          // Halaman Pemilihan Bahasa
          "title_splash": "Pilih Bahasa yang akan digunakan",
          "english": "Bahasa Inggris",
          "indo": "Bahasa Indonesia",

          // MainPage Text
          "beranda_bar": "Beranda",
          "kalkulator_bar": "Kalkulator",
          "profil_bar": "Tentang Kita",
          // Beranda Page

          "beranda_1":
              "Ekoenzim atau ecoenzyme atau garbage enzyme adalah larutan kompleks hasil fermentasi dari limbah organik seperti limbah buah dan sayuran dengan gula merah atau molase dan air dengan bantuan mikroorganisme selektif dari kelompok jamur dan bakteri selama 3 bulan. Hasil larutan fermentasi memiliki warna coklat tua dan berbau asam-manis kuat khas produk fermentasi.",
          "beranda_2":
              "Ekoenzim dikembangkan oleh seorang peneliti dari Thailand yaitu Dr. Rosukon Poompanvong pada tahun 2006. Ekoenzim disebutkan mengandung rantai protein (enzim), asam organik, dan garam mineral yang diperoleh dengan mudah dari hasil fermentasi limbak organik. Ekoenzim memiliki kemiripan dengan enzim yaitu memiliki tingkat degradasi yang tinggi dengan waktu yang singkat. Peneliti menyarankan jika ekoenzim ini dapat difungsikan untuk 4 kategori: dekomposisi (decompose), pembuatan (compose), perubahan (transforms), dan katalisis (catalysis).",
          "beranda_3":
              "Untuk membuat ekoenzim, disiapkan gula merah atau molase, limbah sayur dan buah, air, dan wadah tertutup. Perbandingan antara gula merah atau molase, limbah sayur dan buah, dan air adalah 1:3:10. Agar menghasilkan larutan ekoenzim yang memiliki bau aromatik, maka dapat diperbanyak penggunaan limbah dari buah-buahan.",
          "beranda_4":
              "Ekoenzim dapat dimanfaatkan untuk cairan pembersih rumah tangga alami, pembersih lantai, deterjen, antiseptik alami, mencegah penyumbatan saluran air, menghilangkan bau tidak sedap, mengolah limbah air, agen antimikroba, penangkal nyamuk, insektisida, pestisida, pupuk, menangani akumulasi logam berat. Berikut tabel perbandingan volume ekoenzim dan air yang digunakan untuk berbagai kebutuhan.",
          "beranda_5":
              "Ekoenzim yang dibuat dari limbah kulit buah apel, naga, dan terung dapat meningkatkan nutrisi untuk tanah (dinyatakan dengan penambahan kandungan nitrogen dan bahan organik) dengan perbandingan konsentrasi penggunaan antara ekoenzim dan air adalah 1:800.",
          "beranda_source": "Sumber : https://id.wikipedia.org/wiki/Ekoenzim",

          // Kalculator Page
          "title_calculator": "Kalkulator Eco Enzyme",
          "rasio_air": "Rasio Air",
          "wadah": "Wadah",
          "air": "Air",
          "BO": "BO",
          "GMT": "GMT",
          "Ltr": " Ltr",
          "Kg": " Kg",
          "cal_1": "Formula Eco Enzyme memiliki rasio 1:3:10",
          "cal_2": "*BO = Bahan Organik (kulit buah / sayur)",
          "cal_3": "*GMT = Gula Merah (tebu,aren,molase)",
          "cal_4": "*1 Ltr = 1 Kg = 1000gr",

          // About Page
          "title_about": "Tentang Kita",
          "tentang_1":
              "Aplikasi ini dibangun dengan flutter dengan memperkenalkan modern ui dan menyempurnakan kalkulasi dari perhitungan aplikasi eco enzyme yang ada di play store",
          "tentang_2":
              "Aplikasi ini bisa di jadikan aplikasi mobile, ios, desktop, dan web karena menggunakan framework flutter",
          "tentang_3":
              "Aplikasi ini dibuat oleh : Ardi, Nourma, Mifta, Tiara, Euis, Tika, dan Fitri.\n\nPada Pelatihan Pembuatan Aplikasi Menggunakan Flutter dan Laravel yang diselengarakan di labotarium komputer, teknik elektro, universitas lampung .\n\nPelatihan ini mengenalkan flutter sebagai framework untuk membuat aplikasi, pelatiahan ini membuat 2 aplikasi yaitu Aplikasi Note (Catatan) yang berintregasi dengan api laravel, dan aplikasi eco enzyme ini, serta di laksanakan selama 6 hari",
          "tentang_4": "Hari Pertama",
        },
        "en_US": {

          // Halaman Utama
          "title_app": "Eco Enzyme",
          "tag_line": "Make Trash To Be More Useful",
          "author": "Created by the Unila IT Flutter Team",
          "versi": "Version 1.0",

          // Halaman Pemilihan Bahasa
          "title_splash": "Select the Language to use",
          "english": "English",
          "indo": "Indonesia",

          // MainPage Text
          "beranda_bar": "Home",
          "kalkulator_bar": "Calculator",
          "profil_bar": "About Us",

          // Beranda Page
          "beranda_1":
              "Ecoenzyme or garbage enzyme is a complex solution fermented from organic waste such as fruit and vegetable waste with brown sugar or molasses and water with the help of selective microorganisms from the fungi and bacteria group for 3 months. The fermented solution has a brown color old and has a strong sweet-sour smell typical of fermented products.",
          "beranda_2":
              "Ecoenzyme were developed by a researcher from Thailand, namely Dr. Rosukon Poompanvong in 2006. Ecoenzymes are said to contain protein chains (enzymes), organic acids, and mineral salts which are obtained easily from organic waste fermentation. Ecoenzymes have similarities with enzymes that have a high rate of degradation in a short time. Researchers suggest that this ecoenzyme can function for 4 categories: decompose, compose, transform, and catalysis.",
          "beranda_3":
              "To make ecoenzyme, prepare brown sugar or molasses, vegetable and fruit waste, water, and a closed container. The ratio between brown sugar or molasses, vegetable and fruit waste, and water is 1:3:10. In order to produce a solution ecoenzymes that have an aromatic smell, then the use of fruit waste can be increased.",
          "beranda_4":
              "Ecoenzyme can be used for natural household cleaning fluids, floor cleaners, detergents, natural antiseptics, preventing clogging of drains, removing unpleasant odors, treating waste water, antimicrobial agents, mosquito repellents, insecticides, pesticides, fertilizers, handling accumulation of heavy metals. The following table compares the volume of ecoenzymes and water used for various needs.",
          "beranda_5":
              "Ecoenzyme made from waste peels of apples, and eggplants can increase nutrition for the soil (expressed by the addition of nitrogen and organic matter content) with a concentration ratio of use between ecoenzymes and water is 1:800.",
          "beranda_source": "Source : https://id.wikipedia.org/wiki/Ekoenzim",
          
          // Kalculator Page
          "title_calculator": "Eco Enzyme Calculator",
          "rasio_air": "Ratio Water",
          "wadah": "Conatiner",
          "air": "Water",
          "BO": "OI",
          "GMT": "CPM",
          "ltr": "ltr",
          "kg": "kg",
          "cal_1": "Eco Enzyme formula has a ratio of 1:3:10",
          "cal_2": "*OI = Organic Ingredients (fruit / vegetable peels)",
          "cal_3": "*CPM = Brown Sugar (cane, palm, molasses)",
          "cal_4": "*1 Ltr = 1 Kg = 1000gr",

          // About Page

          "tentang_1":
              "This application was built with Flutter by introducing modern UI and perfecting the calculation of the calculation of the eco enzyme application in the play store",
          "tentang_2":
              "This application can be made into mobile, iOS, desktop and web applications because it uses the Flutter framework",
          "tentang_3":
              "This application was created by: Ardi, Nourma, Mifta, Tiara, Euis, Tika, and Fitri.\n\nThe Application Development Training Using Flutter and Laravel was held at a computer lab, electrical engineering, Lampung University.\n \nThis training introduces Flutter as a framework for creating applications, this training makes 2 applications, namely the Note application which integrates with the Laravel api, and this eco enzyme application, and is carried out for 6 days",
          "tentang_4": "First Day",
        }
      };
}
