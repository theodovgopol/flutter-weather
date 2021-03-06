import 'location.dart';

class Weather {
  Location location;
  String summary;
  String icon;
  int temp;
  int pressure;
  int humidity;
  double windSpeed;
  int uvIndex;

  //constructor, populate the object with provided data
  Weather({
    this.location,
    this.summary,
    this.icon,
    this.temp,
    this.pressure,
    this.humidity,
    this.windSpeed,
    this.uvIndex,
  });

  //populate object using JSON data
  factory Weather.fromJson(Location location, Map<String, dynamic> json) {
    return Weather(
      location: location,
      summary: json['currently']['summary'] ?? "-",
      icon: json['currently']['icon'] ?? "-",
      temp: json['currently']['temperature'].floor() ?? 0,
      pressure: (json['currently']['pressure']).toInt() ?? 0,
      humidity: (json['currently']['humidity'] * 100).toInt() ?? 0,
      windSpeed: json['currently']['windSpeed'] ?? 0.0,
      uvIndex: json['currently']['uvIndex'] ?? 0,
    );
  }
}
