import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Map> data = [
    {
      "title": "Walk to Oak Park",
      "description": "Bright Madison Street Laft",
      "location": "42, 32",
      "address": "Forest Park, Illinois, USA",
      "image":
          "https://images.unsplash.com/photo-1618773928121-c32242e63f39?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
      "price": 94,
      "currency": "USD",
      "stars": 4.5,
    },
    {
      "title": "Green Garden Park",
      "description": "Green Madison Street Park",
      "location": "42, 32",
      "address": "Green Park, New-York, USA",
      "image":
          "https://images.unsplash.com/photo-1566665797739-1674de7a421a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80",
      "price": 99,
      "currency": "USD",
      "stars": 5,
    }
  ];

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
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(
                                color: Colors.grey.shade300, width: 1)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(
                                color: Colors.grey.shade300, width: 1)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1)),
                        disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1)),
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Enter location ...',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        )),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        border:
                            Border.all(color: Colors.grey.shade300, width: 1)),
                    child: Icon(
                      Icons.filter_alt,
                      color: Colors.blue,
                    ))
              ],
            ),
            SizedBox(height: 20),
            Divider(
              color: Colors.grey.shade400,
              height: 0.5,
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Travel with us',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.grey[800],
                  ),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.blue),
                ),
              ],
            ),
            SizedBox(height: 15),
            Expanded(
              child: Container(
                child: GridView.extent(
                  childAspectRatio: 1.5,
                  maxCrossAxisExtent: 512,
                  padding: EdgeInsets.all(10),
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 10,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: NetworkImage(
                                  data[0]["image"],
                                ),
                                fit: BoxFit.cover,
                              ),
                              border: Border.all(
                                  color: Colors.grey.shade400, width: 1)),
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.blue,
                                  size: 20,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  data[0]['address'],
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                for (int i = 0; i < 5; i++)
                                  Icon(
                                    Icons.star_border_outlined,
                                    size: 20,
                                    color: Colors.blue,
                                  )
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 5),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          title: Text(
                            data[0]['title'],
                            style: TextStyle(fontSize: 20),
                          ),
                          subtitle: Text(
                            data[0]['description'],
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                          trailing: SizedBox(
                            height: 50,
                            width: 70,
                            child: Row(
                              children: [
                                Text(data[0]['price'].toString()+'\$',style: TextStyle(
                                  color: Colors.amber
                                ),),
                                SizedBox(width: 5),
                                Text('Night',style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400
                                ),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: NetworkImage(
                                  data[1]["image"],
                                ),
                                fit: BoxFit.cover,
                              ),
                              border: Border.all(
                                  color: Colors.grey.shade400, width: 1)),
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.blue,
                                  size: 20,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  data[1]['address'],
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                for (int i = 0; i < 5; i++)
                                  Icon(
                                    Icons.star_border_outlined,
                                    size: 20,
                                    color: Colors.blue,
                                  )
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 5),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          title: Text(
                            data[1]['title'],
                            style: TextStyle(fontSize: 20),
                          ),
                          subtitle: Text(
                            data[1]['description'],
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                          trailing: SizedBox(
                            height: 50,
                            width: 70,
                            child: Row(
                              children: [
                                Text(data[1]['price'].toString()+'\$',style: TextStyle(
                                    color: Colors.amber
                                ),),
                                SizedBox(width: 5),
                                Text('Night',style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400
                                ),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
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
