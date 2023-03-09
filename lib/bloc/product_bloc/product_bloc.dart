import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../model/product_model.dart';
import '../../service/api_service.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {

  ProductBloc() : super(ProductInitial()) {
    ApiService apiService = ApiService();
    on<ProductEvent>((event, emit) async{
      // TODO: implement event handler


        try{
          emit(ProductLoading());
          ProductsModel productList = await apiService.getProductsModel();
          emit(ProductDataLoaded(productList));
        }catch(e){
          emit(ProductError(e.toString()));
        }

    });
  }
}
