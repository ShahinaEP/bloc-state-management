part of 'product_bloc.dart';

@immutable
abstract class ProductState extends Equatable{}

class ProductInitial extends ProductState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
class ProductLoading extends ProductState{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}

class ProductDataLoaded extends ProductState{

  ProductsModel productList;
  ProductDataLoaded(this.productList);

  @override
  // TODO: implement props
  List<Object?> get props => [productList];
}

class ProductError extends ProductState{

  String message;
  ProductError(this.message);
  @override
  // TODO: implement props
  List<Object?> get props => [message];
}