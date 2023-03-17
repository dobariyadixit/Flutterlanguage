
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homepage extends StatefulWidget {

  @override
  State<Homepage> createState() => _HomepageState();
}

final List locale =[
  {'name':'ENGLISH','locale':Locale('en','US')},
  {'name':'हिंदी','locale':Locale('hi','IN')},
  {'name':'ગુજરાતી','locale':Locale('gu','IN')},
  {'name':'বাংলা','locale':Locale('bn','IN')},
  {'name':'অসমীয়া','locale':Locale('as','IN')},
  {'name':'डोगरी','locale':Locale('dg','IN')},
  {'name':'ಕನ್ನಡ','locale':Locale('kn','IN')},
  {'name':'कोंकणी','locale':Locale('kk','IN')},
  {'name':'मैथिली','locale':Locale('mt','IN')},
  {'name':'മലയാളം','locale':Locale('ml','IN')},
  {'name':'मराठी','locale':Locale('mr','IN')},
  {'name':'ꯃꯩꯇꯩꯂꯣꯟ','locale':Locale('mp','IN')},
  {'name':'नेपाली','locale':Locale('np','IN')},
  {'name':'ଓଡିଆ (ଓରିଆ)','locale':Locale('or','IN')},
  {'name':'ਪੰਜਾਬੀ','locale':Locale('pj','IN')},
  {'name':'संस्कृत','locale':Locale('sk','IN')},
  {'name':'سنڌي','locale':Locale('sd','IN')},
  {'name':'தமிழ்','locale':Locale('tl','IN')},
  {'name':'తెలుగు','locale':Locale('tlg','IN')},
  {'name':'اردو','locale':Locale('ur','IN')},
];

updatelanguage(Locale locale){
  Get.back();
  Get.updateLocale(locale);
}

builddialog(BuildContext context){
  showDialog(
      context: context,
      builder: (builder){
        return AlertDialog(
          title: Text('Choose a language'),
          content: Container(
            width: double.maxFinite,
            child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context,index){
                return Padding(
                  padding: EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: (){
                      print(locale[index]['name']);
                      updatelanguage(locale[index]['locale']);
                    },
                      child: Text(locale[index]['name'])),
                );
              },
              separatorBuilder: (context,index){
                return Divider(
                  color: Colors.blueAccent,
                );
              },
              itemCount: locale.length,
            ),
          ),
        );
      });
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello Flutter user".tr,style: TextStyle(color: Colors.black,fontSize: 15),),
            SizedBox(height: 10,),
            Text("Welcome to MDIDM Infoway".tr,style: TextStyle(fontSize: 20),),
            SizedBox(height: 10,),
            Text("Join now".tr,style: TextStyle(fontSize: 20),),
            ElevatedButton(
                onPressed: (){
                  builddialog(context);
                },
                child: Text("Change Language".tr)),
          ],
        ),
      ),
    );
  }
}
