part of 'user_bloc.dart';

@immutable
abstract class UserEvent extends Equatable{}

class GetAllUser extends UserEvent{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
