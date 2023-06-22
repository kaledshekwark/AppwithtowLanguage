import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutterwithappenglishandarabic/AppLocalizations.dart';

import 'Widgets/HomePage.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      home: HomePage(),
      //نحدد هنا اللغات التي يدعمها التطبيق
      supportedLocales: [
        Locale('en'),
        Locale('ar')
      ],
      //يجب اضافتهن داخل  pubdpec.yaml
      //نستخدم هذه الخصائص لتحديد خصائص التطيسق حسب اللغة مثل اتجاه الكلام
      localizationsDelegates:[
        AppLocalizations.delegate,
        // مسؤولة عن ترجمة الكلمات الاساسية مثل ok  and cancel
       GlobalMaterialLocalizations.delegate,
       // مسؤولة عن نقل اتجاه widgets
       GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ] ,
      //localeResolutionCallback عم نحدد لغة الجهاز التي يجب ان يعمل بها النظام
    // نعمل كل هذه الحركة من اجل اذا كانت لغة الهاتف لايدعمها النطبيق
      localeResolutionCallback: (locale, supportedLocales)
      {
        for (var x in supportedLocales){
          if (locale!=null && locale.languageCode==x.languageCode)
            {
              return locale;
            }
        }
          return supportedLocales.first;

      } ,
    );
  }
}
