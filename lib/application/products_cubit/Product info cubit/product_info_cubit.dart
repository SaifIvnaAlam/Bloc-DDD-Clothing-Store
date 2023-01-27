import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/interface/i_products_repository.dart';
import '../../../domain/products.dart';

part 'product_info_state.dart';
part 'product_info_cubit.freezed.dart';

class ProductInfoCubit extends Cubit<ProductInfoState> {
  final IProductRepository _productRepository;

  ProductInfoCubit(this._productRepository)
      : super(ProductInfoState.productLoading());

  Future<void> getProductsid(int productId) async {
    var product = await _productRepository.getProductsbyId(productId);

    emit(ProductInfoState.productLoaded(product));
  }
}
