import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id ='HomePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Easy Translation').tr(),
      ),
      body: Container(padding: EdgeInsets.all(20),
        child: Column(mainAxisAlignment: MainAxisAlignment.end,
          children: [

            Expanded(child: Center(
              child: Text('welcome').tr(),
            )),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.redAccent),
                    child: FlatButton(onPressed: (){
                      context.setLocale(Locale('uz', 'UZ'));
                    }, child: Text('Uz')),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blueAccent),
                    child: FlatButton(onPressed: (){
                      context.setLocale(Locale('ru', 'RU'));}, child: Text('Ru')),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Container(width: double.infinity,
                    height: 45,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.green),
                    child: FlatButton(onPressed: (){
                      context.setLocale(Locale('en', 'US'));

                      }, child: Text('Eng')),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Container(width: double.infinity,
                    height: 45,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.yellow),
                    child: FlatButton(onPressed: (){
                      context.setLocale(Locale('fr', 'FR'));

                    }, child: Text('French')),

                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
