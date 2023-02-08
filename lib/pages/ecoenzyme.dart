part of 'pages.dart';

class EcoEnzymePage extends StatefulWidget {
  const EcoEnzymePage({super.key});

  @override
  State<EcoEnzymePage> createState() => _EcoEnzymePageState();
}

class _EcoEnzymePageState extends State<EcoEnzymePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Center(
        child: SizedBox(
          width:375,
          child: ListView(
            children: [
              Hero(
                tag: "icon",
                child: SizedBox(
                  width: 300,
                  height: 300,
                  child: Image.asset('assets/logo_eco.jpg'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'title_app'.tr,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ContentBeranda(
                isi:
                    "beranda_1".tr,
              ),
              ContentBeranda(
                isi:
                    "beranda_2".tr,
              ),
              ContentBeranda(
                isi:
                    "beranda_3".tr,
              ),
              ContentBeranda(
                isi:
                    "beranda_4".tr,
              ),
              ContentBeranda(
                isi:
                    "beranda_5".tr,
              ),
              ContentBeranda(
                isi: "beranda_source".tr,
              ),
              SizedBox(height:100)
            ],
          ),
        ),
      ),
    );
  }
}

class ContentBeranda extends StatelessWidget {
  final String isi;
  const ContentBeranda({super.key, required this.isi});

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
            child: Text(isi),
          )),
        ),
      ),
    );
  }
}
