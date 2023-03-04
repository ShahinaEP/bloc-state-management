part of 'user_bloc.dart';

@immutable
abstract class UserState extends Equatable{}

class UserInitial extends UserState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class UserLoading extends UserState{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}

class UserDataLoaded extends UserState{

  List<UserModel> userList;
  UserDataLoaded(this.userList);

  @override
  // TODO: implement props
  List<Object?> get props => [userList];
}

class UserError extends UserState{

  String message;
  UserError(this.message);
  @override
  // TODO: implement props
  List<Object?> get props => [message];
}