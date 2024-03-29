part of 'user_name_text_field_bloc.dart';

sealed class UserNameTextFieldEvent extends Equatable {
   UserNameTextFieldEvent();
  @override
  List<Object> get props => [];
}

// Sự kiện khi giá trị của TextField thay đổi
class TextFieldChangedEvent extends UserNameTextFieldEvent {
  final String newValue;

   TextFieldChangedEvent(this.newValue);

  @override
  List<Object> get props => [newValue];
}