

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppLocalizations{
  final Locale? locale;
  AppLocalizations({ this.locale});
  static LocalizationsDelegate <AppLocalizations> delegate=_AppLocalizations();

  static AppLocalizations?of(BuildContext context)
  {
    return Localizations.of<AppLocalizations>(context,AppLocalizations);
  }
  late Map<String,String> _Localized;
  Future LoadJsonLungue() async{
    String JsonString=await rootBundle.loadString("assets/lang/${locale!.languageCode}.json");
    Map<String,dynamic> jsonMap=json.decode(JsonString);

    _Localized=jsonMap.map((key, value) =>MapEntry(key, value.toString())

    );
  }

  String translate(String key)=>_Localized[key]??"";
}
class _AppLocalizations extends LocalizationsDelegate<AppLocalizations>{
  @override
  bool isSupported(Locale locale) {
 return ['en','ar'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    AppLocalizations localizations=AppLocalizations(locale: locale);
    await localizations.LoadJsonLungue();
    return localizations;

  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalizations> old)
  =>false;
}
 extension TranslateX on String {

 String tr( BuildContext context)
 {
    return AppLocalizations.of(context)!.translate(this);
 }

 }