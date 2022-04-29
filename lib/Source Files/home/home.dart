import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List data = [
    {
      "title": "Walk to Oak Park",
      "description": "Bright Madison Street Laft",
      "location": "42, 32",
      "address": "Forest Park, Illinois, USA",
      "image": "https://images.unsplash.com/photo-1618773928121-c32242e63f39?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
      "price": 94,
      "currency": "USD",
      "stars": 4.5,
    },
    {
      "title": "Green Garden Park",
      "description": "Green Madison Street Park",
      "location": "42, 32",
      "address": "Green Park, New-York, USA",
      "image": "https://images.unsplash.com/photo-1566665797739-1674de7a421a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80",
      "price": 99,
      "currency": "USD",
      "stars": 5,
    },
    {
      "title": "Walk to Oak Park",
      "description": "Bright Madison Street Laft",
      "location": "42, 32",
      "address": "Forest Park, Illinois, USA",
      "image": "https://images.unsplash.com/photo-1618773928121-c32242e63f39?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
      "price": 94,
      "currency": "USD",
      "stars": 4.5,
    },
    {
      "title": "Green Garden Park",
      "description": "Green Madison Street Park",
      "location": "42, 32",
      "address": "Green Park, New-York, USA",
      "image": "https://images.unsplash.com/photo-1566665797739-1674de7a421a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80",
      "price": 99,
      "currency": "USD",
      "stars": 5,
    },
    {
      "title": "Walk to Oak Park",
      "description": "Bright Madison Street Laft",
      "location": "42, 32",
      "address": "Forest Park, Illinois, USA",
      "image": "https://images.unsplash.com/photo-1618773928121-c32242e63f39?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
      "price": 94,
      "currency": "USD",
      "stars": 4.5,
    },
    {
      "title": "Green Garden Park",
      "description": "Green Madison Street Park",
      "location": "42, 32",
      "address": "Green Park, New-York, USA",
      "image": "https://images.unsplash.com/photo-1566665797739-1674de7a421a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80",
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
      body: ListView(
        padding: const EdgeInsets.all(10),
        controller: ScrollController(),
        shrinkWrap: true,
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
              const SizedBox(width: 10),
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
          const SizedBox(height: 20),
          Divider(
            color: Colors.grey.shade400,
            height: 0.5,
          ),
          const SizedBox(height: 10),
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
              const Text(
                'See All',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.blue),
              ),
            ],
          ),
          const SizedBox(height: 15),
          GridView.builder(
            padding: EdgeInsets.zero,
            itemCount: data.length,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              crossAxisSpacing: 30,
              mainAxisSpacing: 30,
              mainAxisExtent: 350,
              maxCrossAxisExtent: 512,
            ),
            itemBuilder: (ctx, index) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: (){
                  },
                  child: Container(
                    height: 230,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: NetworkImage(
                            data[index]["image"],
                          ),
                          fit: BoxFit.cover,
                        ),
                        border: Border.all(
                            color: Colors.grey.shade400, width: 1)),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        onTap: (){},
                        minLeadingWidth: 10.0,
                        contentPadding: EdgeInsets.zero,
                        leading: const Icon(
                          Icons.location_on_outlined,
                          color: Colors.blue,
                          size: 20,
                        ),
                        title: Text(
                          data[index]['address'],
                          style: const TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: 100,
                      child: Row(
                        children: [
                          for (int i = 0; i < 5; i++)
                            InkWell(
                              onTap: (){},
                              child: const Icon(
                                Icons.star_border_outlined,
                                size: 20,
                                color: Colors.blue,
                              ),
                            )
                        ],
                      ),
                    ),

                  ],
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: InkWell(
                    onTap: (){},
                    child: Text(
                      data[index]['title'],
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                  subtitle: InkWell(
                    onTap: (){},
                    child: Text(
                      data[index]['description'],
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  trailing: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: data[0]['price'].toString()+'\$'+'  ',style: TextStyle(color: Colors.amber.shade900)),
                        const TextSpan(text: 'Night',style: TextStyle(color: Colors.grey))
                      ]
                    ),

                  )
                ),
              ],
            ),
          ),
        ],
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
