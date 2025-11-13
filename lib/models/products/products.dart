import 'package:http/http.dart' as http;
import 'dart:convert';



class Products {

final String name;
final String comment;
final double price;
final int stock;

static var products = [];

Products(this.name, this.comment, this.price, this.stock);

static void listProducts() {
  Products.products.forEach((p) {
    print(" ");
    print("##################### PRODUCT #####################");
    print("Name : " + p.name);
    print("Description : " + p.comment);
    print("Price : " + p.price.toString());
    print("Stock : " + p.stock.toString());
    print("###################################################");
    print(" ");
  });
}

}


class FetchProducts {
  
  static fetchAll() async{
  final Uri endpoint = Uri.parse('https://dummyjson.com/products');
  final response = await http.get(endpoint);
  

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    return data;
  } else {
    print("Error : " + response.statusCode.toString());
  }
  }

  static fetchOne(int id) async {
    final Uri endpoint = Uri.parse('https://dummyjson.com/products/${id}');
    final response = await http.get(endpoint);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final product = Products(data['title'], data['description'], data['price'], data['stock']);
      Products.products.add(product);
    } else {
      print('Error : ${response.statusCode}');
    }
}
}