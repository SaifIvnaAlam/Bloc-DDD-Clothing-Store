import 'package:bloc/bloc.dart';
import 'package:clothing_store/domain/products.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/interface/i_products_repository.dart';

part 'products_state.dart';
part 'products_cubit.freezed.dart';

class ProductsCubit extends Cubit<ProductsState> {
  final IProductRepository _productRepository;
  ProductsCubit(this._productRepository) : super(const ProductsState.loading());

  Future<void> getAllProducts() async {
    var productsList = await _productRepository.getProducts();

    emit(ProductsState.loaded(productsList));
  }
}
