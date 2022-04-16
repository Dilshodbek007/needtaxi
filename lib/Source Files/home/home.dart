import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                  leading: const Icon(Icons.home),
                  trailing:  Text(
                    AppLocalizations.of(context)!.home,
                    style: TextStyle(color: Colors.green, fontSize: 15),
                  ),
                  title: Text("List item $index",style: TextStyle(
                    color: Colors.black
                  ),),
              ),
            )),
      ),
    );
  }

  BoxDecoration buttonBackDecoration() {
    return BoxDecoration(
        gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.blue,
              Color(0xFF42A5F5),
              Color(0xFF2995FB),
              Color(0xFF1E88E5),
              Color(0xFF1E88E5)
            ]),
        borderRadius: BorderRadius.circular(14));
  }

  Widget buttonIcon(IconData icon, double size) {
    return Container(
      alignment: Alignment.center,
      child: Icon(
        icon,
        color: Colors.white,
        size: size,
      ),
      height: 35,
      width: 35,
      decoration: BoxDecoration(
          color: const Color(0xFF64B5F6),
          borderRadius: BorderRadius.circular(8)),
    );
  }
}

