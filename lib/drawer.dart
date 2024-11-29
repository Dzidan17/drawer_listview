// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  static const String header = "XII RPL 2";
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue[900],
        foregroundColor: Colors.white, //for universal colors
      ),
      drawer: buildGroupDrawer(context),
      body: Center(
        child: Text("Pemrograman Mobile $title"),
      ),
    //   body: GridView.count(
    //       crossAxisCount: 2,
    //       crossAxisSpacing: 10.5,
    //       mainAxisSpacing: 10.0,
    //       shrinkWrap: true,
    //       children: List.generate(10, (index) {
    //         return Padding(
    //             padding: const EdgeInsets.all(10.0),
    //             child: Container(
    //               height: 5.0,
    //               decoration: BoxDecoration(
    //                 borderRadius: BorderRadius.circular(20.0),
    //                 color: Colors.blue[200],
    //               ),
    //               child: Text(
    //                 'Materi $index',
    //                 textAlign: TextAlign.center,
    //                 style: const TextStyle(
    //                   color: Colors.black,
    //                   fontSize: 20.0,
    //                 ),
    //               ),
    //             ));
    //       })),
    );
  }

  Drawer buildGroupDrawer(context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue[900],
            ),
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue[900],
              ),
              accountName: Text("Muhammad Dzidan Setiawan Putra",
              style: TextStyle(fontSize: 18.0)
              ),
              accountEmail: Text("dzidangundul117@gmail.com"),
              currentAccountPictureSize: Size.square(40.0),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("Z", 
                style: TextStyle(fontSize: 25.0,
                color: Colors.blue
                ),
                ),
              ),
            ),
            // child: const Text(
            //   'Muhammad Dzidan Setiawan Putra',
            //   style: TextStyle(
            //     color: Colors.white,
            //     fontSize: 30.0,
            //   ),
            // ),
          ),
          // ExpansionTile(
          //   title: const Text('Materi'),
          //   children: <Widget>[
          //     ListTile(
          //       title: Text('Materi 1'),
          //       onTap: () {
          //         Navigator.pop(context);
          //       },
          //     ),
          //     ListTile(
          //       title: Text('Materi 2'),
          //       onTap: () {
          //         Navigator.pop(context);
          //       },
          //     ),
          //     ListTile(
          //       title: Text('Materi 3'),
          //       onTap: () {
          //         Navigator.pop(context);
          //       },
          //     ),
          //     ListTile(
          //       title: Text('Materi 4'),
          //       onTap: () {
          //         Navigator.pop(context);
          //       },
          //     ),
          //     ListTile(
          //       title: Text('Materi 5'),
          //       onTap: () {
          //         Navigator.pop(context);
          //       },
          //     ),
          //   ],
          // ),
          // ExpansionTile(
          //   title: const Text('Tugas'),
          //   children: <Widget>[
          //     ListTile(
          //       title: Text('Tugas 1'),
          //       onTap: () {
          //         Navigator.pop(context);
          //       },
          //     ),
          //     ListTile(
          //       title: Text('Tugas 2'),
          //       onTap: () {
          //         Navigator.pop(context);
          //       },
          //     ),
          //     ListTile(
          //       title: Text('Tugas 3'),
          //       onTap: () {
          //         Navigator.pop(context);
          //       },
          //     ),
          //     ListTile(
          //       title: Text('Tugas 4'),
          //       onTap: () {
          //         Navigator.pop(context);
          //       },
          //     ),
          //     ListTile(
          //       title: Text('Tugas 5'),
          //       onTap: () {
          //         Navigator.pop(context);
          //       },
          //     ),
          //   ],
          // )

        ListTile(
          leading: Icon(Icons.person),
          title: Text("Dzidan"),
          subtitle: Text("XII RPL 2"),
          trailing: Icon(Icons.chevron_left),
        )
        ],
      ),
    );
  }
}
