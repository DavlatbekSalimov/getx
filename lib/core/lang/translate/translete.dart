
import 'package:get/get.dart';


class MyTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en': {
      'title': 'Hello World %s',
      'text' : 'This is EN Text',
    },
    'en_US': {
      'title': 'Hello World from US',
      'text' : 'This is ENUS Text',
    },
    'pt': {
      'title': 'Olá de Portugal',
      'text' : 'This is Portugal Text',
    },
    'pt_BR': {
      'title': 'Olá do Brasil',
      'text' : 'This is Brasil Text',
    },
  };
}