
import 'package:demo_my_app/src/presentation/blocs/text_field_bloc/user_name_text_field_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';





class TextFieldWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final UserNameTextFieldBloc _textFieldBloc = context.read<UserNameTextFieldBloc>();

    return BlocBuilder<UserNameTextFieldBloc, UserNameTextFieldState>(
      bloc: _textFieldBloc,
      builder: (context, state) {
        String currentText = '';
        if (state is UserNameTextFieldInitial) {
          currentText = state.newValue;
          print(currentText);
        }


        return TextFormField(
          onChanged: (newText) {
            print(newText);
            _textFieldBloc.add(TextFieldChangedEvent(newText));
          },
          decoration: InputDecoration(
            labelText: 'Enter text',

          ),
          initialValue: currentText,

        );
      },
    );
  }
}
