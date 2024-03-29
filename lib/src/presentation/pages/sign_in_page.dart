import 'package:demo_my_app/src/presentation/blocs/text_field_bloc/user_name_text_field_bloc.dart';
import 'package:demo_my_app/src/routers/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../widgets/form/text_field/text_field_user_name.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<UserNameTextFieldBloc, UserNameTextFieldState>(
        builder: (context, state) {
          final currentState = state as UserNameTextFieldInitial;
          return Container(
            padding: const EdgeInsets.only(
              left: 40,
              right: 40,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    top: 50,
                  ),
                  child: const Text(
                    'Đăng Nhập',
                    style: TextStyle(
                      color: Color(0xFF0081A7),
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      // prefixIcon: Icon(Icons.person),
                      labelStyle: TextStyle(
                        color: Color(0xFF0081A7),
                      ),
                      labelText: 'User name',
                    ),
                  ),
                ),
                SizedBox(
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelStyle: TextStyle(
                        color: Color(0xFF0081A7),
                      ),
                      focusColor: Color(0xFF0081A7),
                      labelText: 'Password',
                    ),
                  ),
                ),
                // SizedBox(
                //   child: TextFieldWidget(),
                // ),
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        if (currentState is UserNameTextFieldInitial) {
                          print(currentState.newValue);
                          AppRouter.navigateTo(context, '/home');
                        }
                      },
                      child: Text(
                        "Đăng Nhập",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.cyan),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
