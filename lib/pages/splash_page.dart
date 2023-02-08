part of 'pages.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  int time = 7;
  void initState(){
    super.initState();
     WidgetsBinding.instance.addPostFrameCallback((_)async{
       await Future.delayed(Duration(seconds: time), () {
        Get.off(() => LanguagePage(),duration:Duration(seconds: 1));
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Center(
          child: Column(
        children: [
          Hero(
            tag:"icon",
            child: SizedBox(
              width: 300,
              height: 300,
              child: Image.asset('assets/logo_eco.jpg'),
            ),
          ),
          SizedBox(height:  MediaQuery.of(context).size.height/10,),
          AnimatedTextKit( animatedTexts: [
            TyperAnimatedText("title_app".tr,
                textStyle: TextStyle(color: Colors.black), speed: Duration(milliseconds: 150)),
            TyperAnimatedText("tag_line".tr,
                textStyle: TextStyle(color: Colors.black), speed: Duration(milliseconds: 150)),
          ]),
          
          SizedBox(height: MediaQuery.of(context).size.height/3,),
          Text('author'.tr),
          Text('versi'.tr),
        ],
      )),
    );
  }
}

