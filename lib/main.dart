import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rememberly/manager/home_cubit.dart';
import 'package:rememberly/views/home_view.dart';

void main() {
  runApp(const CardGame());
}

class CardGame extends StatelessWidget {
  const CardGame({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeView(),
      ),
    );
  }
}

