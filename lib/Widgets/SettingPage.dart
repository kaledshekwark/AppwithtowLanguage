import 'package:flutter/material.dart';
import 'package:flutterwithappenglishandarabic/AppLocalizations.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("titel-S".tr(context)),),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: DropdownButton<String>(
            value: "ar",
            icon: Icon(Icons.keyboard_arrow_down),
            items: ['ar', 'en'].map((String item) {
              return DropdownMenuItem<String>(
                value: item,
                child: Text(item),
              );
            }).toList(),
            onChanged: (String? newValue) {},
          ),
        ),
      ),
    );
  }
}
