import 'package:html/parser.dart';

class WebtoonEpisodeModel {
  final String id, title, rating, date;

  WebtoonEpisodeModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = parseFragment(json['title']).text!,
        rating = json['rating'],
        date = json['date'];
}
