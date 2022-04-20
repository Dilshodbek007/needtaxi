import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
            controller: ScrollController(),
            shrinkWrap: true,
            itemCount: 30,
            itemBuilder: (BuildContext context, int index) => SizedBox(
              height: 50,
              child: ListTile(
                  leading: const Icon(Icons.search),
                  trailing:  Text(
                    AppLocalizations.of(context)!.search,
                    style: TextStyle(color: Colors.green, fontSize: 15),
                  ),
                  title: Text("${AppLocalizations.of(context)!.listItem} $index",style: TextStyle(
                      color: Colors.black
                  ),),),
            )),
      ),
    );
  }
}
