part of 'pages.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  TextEditingController textwadah2 = TextEditingController(text: '');
  TextEditingController textair2 = TextEditingController(text: '');
  TextEditingController textbo2 = TextEditingController(text: '');
  TextEditingController textgmt2 = TextEditingController(text: '');
  double slider2 = 100;
  String slider2text = '100';
  double wadah2 = 0;
  double air2 = 0;
  double bo2 = 0;
  double gmt2 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mainColor,
        body: ListView(
          children: [
            Center(
              child: Container(
                  padding: EdgeInsets.all(16),
                  child: Text('title_calculator'.tr,
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold))),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 1 / 30),
            Center(
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                shadowColor: Colors.grey,
                child: Container(
                  decoration: BoxDecoration(
                    color: Get.isDarkMode ? Colors.black87 : Colors.white,
                    border:
                        Border.all(color: secondaryColor, width: 4.0, style: BorderStyle.solid), //Border.all
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  width: MediaQuery.of(context).size.width * 9 / 10,
                  height: 300,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(width: MediaQuery.of(context).size.width / 5),
                                Text("rasio_air".tr),
                                Container(
                                  width: MediaQuery.of(context).size.width / 3,
                                  child: Slider(
                                    inactiveColor: Colors.grey,
                                    thumbColor: Colors.green,
                                    value: slider2,
                                    min: 1,
                                    max: 100,
                                    divisions: 100,
                                    label: slider2.toStringAsFixed(2),
                                    onChanged: (double value) {
                                      setState(() {
                                        slider2 = value;
                                        air2 = wadah2 * value / 100;
                                        bo2 = air2 * 0.1;
                                        gmt2 = air2 * 0.3;
                                      });
                                      String air2string = air2.toStringAsFixed(2);
                                      String bo2string = bo2.toStringAsFixed(2);
                                      String gmt2string = gmt2.toStringAsFixed(2);
                                      String wadah2string = wadah2.toStringAsFixed(2);
                                      String slider2string = slider2.toStringAsFixed(2);
                                      if (bo2string.split(".")[1] == '00') {
                                        bo2string = bo2string.split(".")[0];
                                      }
                                      if (gmt2string.split(".")[1] == '00') {
                                        gmt2string = gmt2string.split(".")[0];
                                      }
                                      if (air2string.split(".")[1] == '00') {
                                        air2string = air2string.split(".")[0];
                                      }
                                      if (wadah2string.split(".")[1] == '00') {
                                        wadah2string = wadah2string.split(".")[0];
                                      }
                                      if (slider2string.split(".")[1] == '00') {
                                        slider2string = slider2string.split(".")[0];
                                      }
                                      if (bo2string.split(".").length == 2 && bo2string.endsWith('0')) {
                                        if (bo2string != null && bo2string.length > 0) {
                                          bo2string = bo2string.substring(0, bo2string.length - 1);
                                        }
                                      }
                                      if (gmt2string.split(".").length == 2 && gmt2string.endsWith('0')) {
                                        if (gmt2string != null && gmt2string.length > 0) {
                                          gmt2string = gmt2string.substring(0, gmt2string.length - 1);
                                        }
                                      }

                                      if (air2string.split(".").length == 2 && air2string.endsWith('0')) {
                                        if (air2string != null && air2string.length > 0) {
                                          air2string = air2string.substring(0, air2string.length - 1);
                                        }
                                      }

                                      if (wadah2string.split(".").length == 2 && wadah2string.endsWith('0')) {
                                        if (wadah2string != null && wadah2string.length > 0) {
                                          wadah2string = wadah2string.substring(0, wadah2string.length - 1);
                                        }
                                      }
                                      if (slider2string.split(".").length == 2 &&
                                          slider2string.endsWith('0')) {
                                        if (slider2string != null && slider2string.length > 0) {
                                          slider2string =
                                              slider2string.substring(0, slider2string.length - 1);
                                        }
                                      }
                                      textwadah2.text = wadah2string;
                                      textbo2.text = bo2string;
                                      textgmt2.text = gmt2string;
                                      textair2.text = air2string;
                                      slider2text = slider2string;
                                    },
                                  ),
                                ),
                                Text(slider2text + " %"),
                              ],
                            ),
                            Table(
                              // border: TableBorder.all(),
                              columnWidths: const <int, TableColumnWidth>{
                                0: FlexColumnWidth(1),
                                1: FlexColumnWidth(2),
                                2: FlexColumnWidth(2),
                                3: FlexColumnWidth(5),
                                4: FlexColumnWidth(2),
                                5: FlexColumnWidth(1),
                              },
                              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                              children: <TableRow>[
                                TableRow(children: [
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Icon(
                                    Icons.delete_rounded,
                                    color: Colors.grey,
                                  ),
                                  Text('wadah'.tr),
                                  Container(
                                    height: 45,
                                    child: TextFormField(
                                      controller: textwadah2,
                                      keyboardType: TextInputType.number,
                                      decoration: const InputDecoration(
                                        hintText: '0',
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(10))),
                                        contentPadding: EdgeInsets.only(top: -5.0),
                                      ),
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 20),
                                      onChanged: (text) {
                                        if (text == "") {
                                          text = "0";
                                        }
                                        wadah2 = double.parse(text);
                                        setState(() {
                                          air2 = wadah2 * slider2 / 100;
                                          bo2 = air2 * 0.1;
                                          gmt2 = air2 * 0.3;
                                        });
                                        textair2.text = air2.toStringAsFixed(2);
                                        String air2string = air2.toStringAsFixed(2);
                                        String bo2string = bo2.toStringAsFixed(2);
                                        String gmt2string = gmt2.toStringAsFixed(2);
                                        if (bo2string.split(".")[1] == '00') {
                                          bo2string = bo2string.split(".")[0];
                                        }
                                        if (gmt2string.split(".")[1] == '00') {
                                          gmt2string = gmt2string.split(".")[0];
                                        }
                                        if (air2string.split(".")[1] == '00') {
                                          air2string = air2string.split(".")[0];
                                        }
                                        if (air2string.split(".").length == 2 && air2string.endsWith('0')) {
                                          if (air2string != null && air2string.length > 0) {
                                            air2string = air2string.substring(0, air2string.length - 1);
                                          }
                                        }
                                        if (bo2string.split(".").length == 2 && bo2string.endsWith('0')) {
                                          if (bo2string != null && bo2string.length > 0) {
                                            bo2string = bo2string.substring(0, bo2string.length - 1);
                                          }
                                        }
                                        if (gmt2string.split(".").length == 2 && gmt2string.endsWith('0')) {
                                          if (gmt2string != null && gmt2string.length > 0) {
                                            gmt2string = gmt2string.substring(0, gmt2string.length - 1);
                                          }
                                        }
                                        textair2.text = air2string;
                                        textbo2.text = bo2string;
                                        textgmt2.text = gmt2string;
                                      },
                                    ),
                                  ),
                                  Text('Ltr'.tr),
                                  SizedBox(),
                                ]),
                                TableRow(children: [
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Icon(
                                    Icons.water_drop,
                                    color: Colors.cyan,
                                  ),
                                  Text('air'.tr),
                                  Container(
                                    height: 45,
                                    child: TextFormField(
                                      controller: textair2,
                                      keyboardType: TextInputType.number,
                                      decoration: const InputDecoration(
                                        hintText: '0',
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(10))),
                                        contentPadding: EdgeInsets.only(top: -5.0),
                                      ),
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 20),
                                      onChanged: (text) {
                                        if (text == "") {
                                          text = "0";
                                        }
                                        air2 = double.parse(text);
                                        wadah2 = air2 * 100 / slider2;
                                        setState(() {
                                          air2 = air2;
                                          bo2 = air2 * 0.1;
                                          gmt2 = air2 * 0.3;
                                        });
                                        String bo2string = bo2.toStringAsFixed(2);
                                        String gmt2string = gmt2.toStringAsFixed(2);
                                        String wadah2string = wadah2.toStringAsFixed(2);
                                        if (bo2string.split(".")[1] == '00') {
                                          bo2string = bo2string.split(".")[0];
                                        }
                                        if (gmt2string.split(".")[1] == '00') {
                                          gmt2string = gmt2string.split(".")[0];
                                        }
                                        if (wadah2string.split(".")[1] == '00') {
                                          wadah2string = wadah2string.split(".")[0];
                                        }
                                        if (bo2string.split(".").length == 2 && bo2string.endsWith('0')) {
                                          if (bo2string != null && bo2string.length > 0) {
                                            bo2string = bo2string.substring(0, bo2string.length - 1);
                                          }
                                        }
                                        if (wadah2string.split(".").length == 2 &&
                                            wadah2string.endsWith('0')) {
                                          if (wadah2string != null && wadah2string.length > 0) {
                                            wadah2string = wadah2string.substring(0, wadah2string.length - 1);
                                          }
                                        }
                                        if (gmt2string.split(".").length == 2 && gmt2string.endsWith('0')) {
                                          if (gmt2string != null && gmt2string.length > 0) {
                                            gmt2string = gmt2string.substring(0, gmt2string.length - 1);
                                          }
                                        }
                                        textwadah2.text = wadah2string;
                                        textbo2.text = bo2string;
                                        textgmt2.text = gmt2string;
                                      },
                                    ),
                                  ),
                                  Text('Ltr'.tr),
                                  SizedBox(),
                                ]),
                                TableRow(children: [
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Container(
                                    width: 30,
                                    height: 36,
                                    child: Icon(Icons.yard, color: Colors.green),
                                  ),
                                  Text('BO'.tr),
                                  Container(
                                    height: 45,
                                    child: TextFormField(
                                      readOnly: true,
                                      controller: textbo2,
                                      keyboardType: TextInputType.number,
                                      decoration: const InputDecoration(
                                        hintText: '0',
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(10))),
                                        contentPadding: EdgeInsets.only(top: -5.0),
                                      ),
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  Text('Kg'.tr),
                                  SizedBox(),
                                ]),
                                TableRow(children: [
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Icon(
                                    Icons.layers,
                                    color: Colors.redAccent,
                                  ),
                                  Text('GMT'.tr),
                                  Container(
                                    height: 45,
                                    child: TextFormField(
                                      readOnly: true,
                                      controller: textgmt2,
                                      keyboardType: TextInputType.number,
                                      decoration: const InputDecoration(
                                        hintText: '0',
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(10))),
                                        contentPadding: EdgeInsets.only(top: -5.0),
                                      ),
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  Text('Kg'.tr),
                                  SizedBox(),
                                ])
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            TextCalculatorEcoEnzyme(text: 'cal_1'.tr),
            TextCalculatorEcoEnzyme(text: 'cal_2'.tr),
            TextCalculatorEcoEnzyme(text: 'cal_3'.tr),
            TextCalculatorEcoEnzyme(text: 'cal_4'.tr),
            SizedBox(height: 100)
          ],
        ));
  }
}

class TextCalculatorEcoEnzyme extends StatelessWidget {
  late String text;
  TextCalculatorEcoEnzyme({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: SizedBox(
        width: double.infinity,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 12,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
