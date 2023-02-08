part of 'pages.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex2 = 1 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (selectedIndex2 == 0)?  CalculatorPage() :
            (selectedIndex2 == 1)?  EcoEnzymePage() :
            AboutPage(),
      bottomNavigationBar: MoltenBottomNavigationBar(
        barColor: secondaryColor,
        borderColor: Colors.transparent,
        domeCircleColor: mainColor,
        domeHeight: 0,
        
        borderRaduis: BorderRadius.circular(0),
        tabs: [
         
          MoltenTab(
            icon: Icon(Icons.calculate),
              title: Text("kalkulator_bar".tr),
                unselectedColor: Colors.black
          ),
           MoltenTab(
            icon: Icon(Icons.home),
            title: Text("beranda_bar".tr),
            unselectedColor: Colors.black
          ),
          MoltenTab(
            icon: Icon(Icons.text_snippet),
              title: Text("profil_bar".tr),
                unselectedColor: Colors.black
          ),
          
        ],
         selectedIndex: selectedIndex2,
          onTabChange: (click){
            selectedIndex2 = click;
            setState(() {});
          }
        )
    );
  }
}