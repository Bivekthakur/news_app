import 'package:dio/dio.dart';
import 'package:newsapp/feature/tech-crunch/technews_model.dart';

class NetworkRequest{
 static final dio = Dio();

static String techNews = 'https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=00f670e2ccb14290af20f5ac6bc4f9f3';

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
}