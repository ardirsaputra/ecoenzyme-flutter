import 'package:get/get.dart';
import './id_lang.dart';
import './en_lang.dart';

class Languages extends Translations {
  Map<String, Map<String, String>> get keys => {
        "id_ID": id_ID,
        "en_US": en_US,
      };
}
