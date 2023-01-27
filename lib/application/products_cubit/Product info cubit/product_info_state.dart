part of 'product_info_cubit.dart';

@freezed
class ProductInfoState with _$ProductInfoState {
  const factory ProductInfoState.productLoaded(Products produtsbyId) =
      _ProductLoadedState;
  const factory ProductInfoState.productLoading() = _ProductLoadingState;
}
