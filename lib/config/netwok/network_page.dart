import 'package:dio/dio.dart';

class NetworkRequest{
 static final dio = Dio();

static String techNews = 'https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=00f670e2ccb14290af20f5ac6bc4f9f3';

 static Future <void> getTechCrunchNews() async {

 final response = await dio.get(techNews);
 print ('My Response: ${response}');
 }
}