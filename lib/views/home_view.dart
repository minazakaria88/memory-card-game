import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rememberly/manager/home_cubit.dart';
import 'package:rememberly/manager/home_state.dart';
import 'package:rememberly/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit,HomeState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                  ),
                  onPressed: (){
                    HomeCubit.get(context).reset();
                  },
                  child: const Text('reset',style: TextStyle(color: Colors.white,fontSize: 20),),
                ),
              ),
            ],
            backgroundColor: Colors.black,
            title: const Text('Memory Card game',style: TextStyle(color: Colors.white),),
          ),
          body: const HomeViewBody(),
        );
      },
    );
  }
}
