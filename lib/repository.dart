
import 'package:http/http.dart' as http;

class NewsRepository {

  Future<http.Response> fetchNewsList()async{
    http.Response response ;
    try{
      var url = Uri.parse('https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=226e69b3fefe485591ba1098b40f6561');
       response = await http.get(url);
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');
      return response ;
    }catch(e){
      print(e.toString());
    }
    return response ;
  }
}