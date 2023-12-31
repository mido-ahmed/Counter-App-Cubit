import 'package:counter_app_with_cubit/Ui/screens/counter_home_screen.dart';
import 'package:counter_app_with_cubit/bloc/counter_cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterCubit()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CounterHomeScreen(),
      ),
    );
  }
}
