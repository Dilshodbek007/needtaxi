
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class Accounts extends StatefulWidget {
  const Accounts({Key? key}) : super(key: key);
  @override
  State<Accounts> createState() => _AccountsState();
}

class _AccountsState extends State<Accounts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
            controller: ScrollController(),
            shrinkWrap: true,
            itemCount: 35,
            itemBuilder: (BuildContext context,int index)=>
                SizedBox(
                  height: 50,
                  child: ListTile(
                      leading: const Icon(Icons.person),
                      trailing:  Text(
                        AppLocalizations.of(context)!.account,
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
