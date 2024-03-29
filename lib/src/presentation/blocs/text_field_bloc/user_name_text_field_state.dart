part of 'user_name_text_field_bloc.dart';

sealed class UserNameTextFieldState extends Equatable {
   UserNameTextFieldState();
  @override
  List<Object> get props => [];
}

final class UserNameTextFieldInitial extends UserNameTextFieldState {
  final String newValue;

  UserNameTextFieldInitial(this.newValue);

  @override
  List<Object> get props => [newValue];
}
