import 'package:dio/dio.dart';
import 'package:newsapp/feature/tech-crunch/technews_model.dart';

class NetworkRequest{
 static final dio = Dio();

static String techNews = 'https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=00f670e2ccb14290af20f5ac6bc4f9f3';
 static String entertainment="https://newsapi.org/v2/top-headlines?country=in&category=entertainment&apiKey=0ccd783fa02041f0a6af8a46923ba931";
 static String sports="https://newsapi.org/v2/top-headlines?country=us&category=sports&apiKey=0ccd783fa02041f0a6af8a46923ba931";

 static Future <List<Articles>?> getTechCrunchNews() async {

 final response = await dio.get(techNews);
 print ('My Response: ${response}');
 print('Status Code: ${response.statusCode}');

 if(response.statusCode == 200 || response.statusCode == 201){
      // Do thing when our request is sucess.
  return TechnewsModel.fromJson(response.data).articles ?? [];

 }

 return [];

 }
 static Future <List<Articles>?> getSportNews() async {

  final response = await dio.get(sports);
  print ('My Response: ${response}');
  print('Status Code: ${response.statusCode}');

  if(response.statusCode == 200 || response.statusCode == 201){
   // Do thing when our request is sucess.
   return TechnewsModel.fromJson(response.data).articles ?? [];

  }

  return [];

 }
 static Future <List<Articles>?> getEntertainmentNews() async {

  final response = await dio.get(entertainment);
  print ('My Response: ${response}');
  print('Status Code: ${response.statusCode}');

  if(response.statusCode == 200 || response.statusCode == 201){
   // Do thing when our request is sucess.
   return TechnewsModel.fromJson(response.data).articles ?? [];

  }

  return [];

 }
}