import 'package:task5_uif_lutter/model/product.dart';
import 'package:http/http.dart' as http;

class RemoteApi {
  static var client = http.Client();

  static Future<List<Product>> getProducts() async {
    //dicoba pake DIO tidak jalan
    try {
      var response = await client.get(Uri.parse(
          "https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline"));
      if (response.statusCode == 200) {
        var jsonString = response.body;
        return productFromJson(jsonString);
      }
    } catch (e) {
      print(e);
    }
  }
}
