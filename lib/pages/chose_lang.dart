part of 'pages.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: MediaQuery.of(context).size.height / 12),
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
                  Text(
                    'title_app'.tr,
                  ),
                  SizedBox(height: 20),
                  Container(width: 400, child: Text("title_splash".tr, textAlign: TextAlign.center)),
                  SizedBox(height: MediaQuery.of(context).size.height / 20),
                  CardLanguage(
                    lang: 'en',
                    locale: 'US',
                    language: 'english'.tr,
                  ),
                  SizedBox(height: 12),
                  CardLanguage(
                    lang: 'id',
                    locale: 'ID',
                    language: 'indo'.tr,
                  ),
                  SizedBox(height: 12),
                  SizedBox(height: 200),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardLanguage extends StatelessWidget {
  late String lang;
  late String locale;
  late String language;
  CardLanguage({Key? key, required this.lang, required this.locale, required this.language})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        //set border radius more than 50% of height and width to make circle
      ),
      child: Container(
        decoration: BoxDecoration(
          color: secondaryColor,
          border: Border.all(color: Colors.black12, width: 1),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        width: 300,
        height: 48,
        child: InkWell(
          onTap: () {
            Get.updateLocale(Locale(lang, locale));
            Get.to(() => MainPage(), duration: Duration(seconds: 1));
          },
          child: Center(
            child: Text(language),
          ),
        ),
      ),
    );
  }
}
