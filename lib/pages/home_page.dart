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
      body: Column(mainAxisAlignment: MainAxisAlignment.end,
        children: [

          Expanded(child: Center(
            child: Text('welcome').tr(),
          )),
          Row(
            children: [
              Expanded(child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.redAccent),
                  child: FlatButton(onPressed: (){
                    context.setLocale(Locale('uz', 'UZ'));
                  }, child: Text('Uz')),
                ),
              )),
              Expanded(child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blueAccent),
                  child: FlatButton(onPressed: (){context.setLocale(Locale('ru', 'RU'));}, child: Text('Ru')),
                ),
              )),
              Expanded(child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(width: double.infinity,
                  height: 45,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.green),
                  child: FlatButton(onPressed: (){
                    context.setLocale(Locale('en', 'US'));

                    }, child: Text('Eng')),
                ),
              )),
            ],
          ),
        ],
      ),
    );
  }
}
