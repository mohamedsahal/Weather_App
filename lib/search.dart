import 'package:flutter/material.dart';
import 'package:weather/weather.dart';

class search extends StatefulWidget {
  const search({Key? key}) : super(key: key);

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  Weather? weather;
  final openWeather = WeatherFactory('833a8199bb7e5ee0f39fda0c566caad2');
  getWeather() async {
    try {
      weather = await openWeather.currentWeatherByCityName(cityName);
      setState(() {});
    } catch (e) {
      print('THe error $e');
    }
  }

  String cityName = "";
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
              onChanged: (value) {
                setState(() {
                  cityName = value;
                });
              },
              decoration: InputDecoration(
                hintText: ('Seaech by City'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    getWeather();
                  },
                  icon: Icon(
                    Icons.search,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
              child: weather != null
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${weather!.temperature!.celsius!.round()} °C',
                          style: TextStyle(fontSize: 35),
                        ),
                        Text('${weather!.weatherDescription!}'),
                      ],
                    )
                  : const SizedBox())
        ],
      ),
    );
  }
}
