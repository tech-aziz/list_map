import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:list_map/views/another_page.dart';
import 'package:matcher/matcher.dart';

class ListMap extends StatefulWidget {
  const ListMap({super.key});

  @override
  State<ListMap> createState() => _ListMapState();
}

class _ListMapState extends State<ListMap> {
  

  List names = [
    {"name": "John", "id": 01, "age": 30, "car": 'Audi'},
    {"name": "Smith", "id": 02, "age": 20, "car": 'Honda'},
    {"name": "Salman", "id": 03, "age": 12, "car": 'Toyota'},
    {"name": "Arif", "id": 04, "age": 10, "car": 'BMW'},
    {"name": "John", "id": 01, "age": 30, "car": 'Audi'},
    {"name": "Smith", "id": 02, "age": 20, "car": 'Honda'},
    {"name": "Salman", "id": 03, "age": 12, "car": 'Toyota'},
    {"name": "Arif", "id": 04, "age": 10, "car": 'BMW'},
    {"name": "Arif", "id": 04, "age": 10, "car": 'BMW'},
    {"name": "Arif", "id": 04, "age": 10, "car": 'BMW'},
    {"name": "Arif", "id": 04, "age": 10, "car": 'BMW'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${names.length}'),
        centerTitle: true,
      ),
      body: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        itemCount: names.length,
        itemBuilder: ((context, index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => AnotherPage(
                        name: names[index]['name'],
                        id: names[index]['id'],
                        age: names[index]['age'],
                        car: names[index]['car'],
                      )));
            },
            child: Card(
              child: ListTile(
                title: Text(names[index]['name']),
                subtitle: Text(names[index]["age"].toString()),
                trailing: Text(names[index]["id"].toString()),
                // subtitle: Text(names[index][3]['car']),
              ),
            ),
          );
        }),
      ),
    );
  }
}
