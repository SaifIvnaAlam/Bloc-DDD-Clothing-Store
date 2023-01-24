import 'dart:convert';

import 'package:http/http.dart' as http;

import '../domain/interface/i_products_repository.dart';
import '../domain/products.dart';

class ProductRepository implements IProductRepository {
  @override
  Future<List<Products>> getProducts() async {
    var response =
        await http.get(Uri.parse("https://fakestoreapi.com/products"));
    print(response.body);

    var data = jsonDecode(response.body) as List;
    var productsList = data.map((json) => Products.fromJson(json));

    return productsList.toList();
  }

  @override
  Future<Products> getProductsbyId(int productId) async {
    var response = await http
        .get(Uri.parse("https://fakestoreapi.com/products/$productId"));
    print(response.body);

    var data = jsonDecode(response.body);
    var productsList = Products.fromJson(data);

    return productsList;
  }
}
