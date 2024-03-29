import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'user_name_text_field_event.dart';
part 'user_name_text_field_state.dart';

class UserNameTextFieldBloc extends Bloc<UserNameTextFieldEvent, UserNameTextFieldState> {
  UserNameTextFieldBloc() : super(UserNameTextFieldInitial('hihi')) {
    on<TextFieldChangedEvent>((event, emit) {
      emit(UserNameTextFieldInitial(event.newValue));
    });
  }

  @override
  Stream<UserNameTextFieldState> mapEventToState(UserNameTextFieldEvent event) async* {
    if (event is TextFieldChangedEvent) {
      yield UserNameTextFieldInitial(event.newValue);
      
    }
  }
}
