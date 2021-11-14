import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mvvm/bloc/user_bloc.dart';
import 'package:flutter_mvvm/model/user.dart';
import 'package:flutter_mvvm/view/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => UserBloc(UninitializedUser()),
        child: MainPage(),
      ),
    );
  }
}
