import 'package:clothing_store/domain/rating.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'products.freezed.dart';
part 'products.g.dart';

@freezed
class Products with _$Products {
  const factory Products({
    required int id,
    required String title,
    required double price,
    String? description,
    required String category,
    required String image,
    Rating? rating,
  }) = _Products;

  factory Products.fromJson(Map<String, dynamic> json) =>
      _$ProductsFromJson(json);

  // factory Products.empty() => const _Products(
  //       category: "",
  //       id: 0,
  //       price: 0.0,
  //       description: "",
  //       image: "",
  //       title: "",
  //       rating: Rating(rate: 0.0, count: 0.0),
  //     );
}
