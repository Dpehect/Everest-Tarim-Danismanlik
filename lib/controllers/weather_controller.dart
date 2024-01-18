import 'package:get/get.dart';
import 'package:getagriculture/models/weather_data.dart';

class WeatherController extends GetxController {
  Rx<WeatherData> weatherData = WeatherData(
    location: 'Adana',
    temperature: '13°/9°',
    weatherCondition: 'Sağanak Yağışlı',
    details: 'Nem: %79\nRüzgar: 14 km/s\nYağış: %40',
  ).obs;
}
