import 'package:flutter/material.dart';
import 'package:flutterwithappenglishandarabic/AppLocalizations.dart';
import 'package:flutterwithappenglishandarabic/Widgets/SettingPage.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("title-M".tr(context)),
        actions: [
          IconButton(onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (ctx) =>  SettingPage())),
              icon: const Icon(Icons.settings))
        ],

      ),
      drawer: Drawer(),
      body:Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              children:
              [
                Text("hello-M".tr(context) ,style: TextStyle(color:Colors.cyan ),textAlign:TextAlign.center,)
                ,Text("This Text will not be Translated!" ,style: TextStyle(color:Colors.cyan ),textAlign:TextAlign.center,)


              ],
            ),
        ),
      )
         , floatingActionButton: FloatingActionButton(

             onPressed: null,
              child: Icon(Icons.add),
    ),
    );
  }
}
