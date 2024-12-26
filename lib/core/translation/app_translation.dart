import 'package:get/get.dart';
import 'package:e_commers/core/translation/languages/ar_languages.dart';
import 'package:e_commers/core/translation/languages/en_languages.dart';

class AppTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "en_US": ENLanguage.map,
        "ar_SA": ARLanguage.map,
      };
}
tr(String key) => key.tr;