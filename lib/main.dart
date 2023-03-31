import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:points_counter/cubit/cubit.dart';
import 'package:points_counter/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: MaterialApp(
        title: 'points counter',
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        home: const HomePage(),
      ),
    );
  }
}
