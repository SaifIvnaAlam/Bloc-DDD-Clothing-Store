part of 'products_cubit.dart';

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState.loading() = _LoadingState;
  const factory ProductsState.loaded(List<Products> produts) = _LoadedState;
  const factory ProductsState.error() = _ErrorState;
}
