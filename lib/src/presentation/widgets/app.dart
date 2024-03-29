
import 'package:demo_my_app/src/presentation/pages/detail_page.dart';
import 'package:demo_my_app/src/presentation/pages/home_page.dart';
import 'package:demo_my_app/src/presentation/pages/plugin_page.dart';
import 'package:demo_my_app/src/presentation/pages/sign_in_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../routers/app_router.dart';
import '../blocs/text_field_bloc/user_name_text_field_bloc.dart';

class App extends StatelessWidget{
  App({super.key});
  final UserNameTextFieldBloc _textFieldBloc = UserNameTextFieldBloc();
  @override
  Widget build(BuildContext context) {
    return   BlocProvider.value(
      value: _textFieldBloc,
        child:const MaterialApp(
          debugShowCheckedModeBanner: false,
          // routerConfig: _router,
          onGenerateRoute: AppRouter.generateRoute,

        ),
    );
  }



}