import 'package:flutter/material.dart';

class search extends StatefulWidget {
  const search({Key? key}) : super(key: key);

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search City Name'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(22.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: ('Seaech by City'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '30',
                  style: TextStyle(fontSize: 35),
                ),
                Text('faahfaahin'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
