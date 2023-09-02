import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:practical_exam_1/model/quotes_model.dart';

class APIHelper {
  APIHelper._();
  static final APIHelper apiHelper = APIHelper._();

  Future<QuotesModel?> fetchQuote() async {
    String baseUrl = "http://api.quotable.io/random";
    http.Response response = await http.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      Map<String, dynamic> decodedData = jsonDecode(response.body);
      QuotesModel quotesData = QuotesModel.fromMap(decodedData);
      return quotesData;
    }
    return null;
  }
}
