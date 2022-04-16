
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);
  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
            controller: ScrollController(),
            shrinkWrap: true,
            itemCount: 30,
            itemBuilder: (BuildContext context,int index)=>
                SizedBox(
                  height: 50,
                  child: ListTile(
                      leading: const Icon(Icons.notifications),
                      trailing:  Text(
                        AppLocalizations.of(context)!.noti,
                        style: TextStyle(
                            color: Colors.green,fontSize: 15),),
                      title:Text("List item $index",style: TextStyle(
                          color: Colors.black
                      ),),
                  ),
                )
        ),
      ),
    );
  }
}
