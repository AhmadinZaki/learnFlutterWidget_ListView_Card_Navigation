import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List bulan = [
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "Mei",
    "Jun",
    "Jul",
    "Aug",
    "Sep",
    "Okt",
    "Nov",
    "Des"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Coba Widget",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Coba Widget"),
        ),
        body: Container(
          child: ListView.builder(
            itemCount: bulan.length,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Column(
                  children: [
                    Text(
                      bulan[index],
                      style: const TextStyle(fontSize: 30.0),
                    ),
                  ],
                ),
              );
            },

            /* BASIC LISTVIEW */
            // children: [
            //   //bisa juga dimasukan container
            //   Container(
            //     child: Column(
            //       children: [
            //         Icon(Icons.add),
            //         Text("add"),
            //       ],
            //     ),
            //   ),
            //   Text(
            //     "A",
            //     style: TextStyle(fontSize: 100.0),
            //   ),
            //   Text(
            //     "B",
            //     style: TextStyle(fontSize: 100.0),
            //   ),
            //   Text(
            //     "C",
            //     style: TextStyle(fontSize: 100.0),
            //   ),
            //   Text(
            //     "D",
            //     style: TextStyle(fontSize: 100.0),
            //   ),
            //   Text(
            //     "E",
            //     style: TextStyle(fontSize: 100.0),
            //   ),
            //   Text(
            //     "F",
            //     style: TextStyle(fontSize: 100.0),
            //   ),
            // ],
          ),
        ),
      ),
    );
  }
}
