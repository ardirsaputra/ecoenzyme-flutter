part of 'pages.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Center(
        child: SizedBox(
          width:375,
          child: ListView(children: [
            Center(
              child: Container(
                padding: EdgeInsets.all(16),
                child: Text(
                  'title_about'.tr,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ContentBeranda(
              isi:
                 "tentang_1".tr,
            ),
            ContentBeranda(
              isi:
                  "tentang_2".tr,
            ),
            ContentBeranda(
              isi:
                  "tentang_3".tr,
            ),
            ContentGambar(
              gambar: 'assets/foto2.jpg',
              keterangan: "tentang_4".tr,
            ),
            ContentGambar(
              gambar: 'assets/foto1.jpg',
            ),
            SizedBox(
              height: 100,
            )
          ]),
        ),
      ),
    );
  }
}

class ContentGambar extends StatelessWidget {
  final String gambar;
  final String? keterangan;
  const ContentGambar({super.key, required this.gambar, this.keterangan});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12, right: 12, left: 12),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Container(
          color: secondaryColor,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    child: Image.asset(gambar),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  keterangan != null
                      ? Center(
                          child: Text(
                            keterangan.toString(),
                          ),
                        )
                      : SizedBox()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
