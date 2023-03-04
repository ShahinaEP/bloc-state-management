import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_statemant_larning/service/api_service.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../model/user_model.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  List<UserModel> userList =[];
  UserBloc() : super(UserInitial()) {
    ApiService apiService = ApiService();
    on<UserEvent>((event, emit) async {
      // TODO: implement event handler
      try{
        emit(UserLoading());
        userList = await apiService.getUserList();
        emit(UserDataLoaded(userList));
      }catch(e){
        emit(UserError(e.toString()));
      }
    });
  }
}
