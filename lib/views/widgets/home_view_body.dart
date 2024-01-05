import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rememberly/manager/home_cubit.dart';
import 'package:rememberly/manager/home_state.dart';
import 'package:rememberly/views/widgets/card_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        var list = HomeCubit.get(context).listOfCard;
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              children: [
            Expanded(
              child: SingleChildScrollView(
                child: Center(
                  child: Wrap(
                    children: List.generate(
                      list.length,
                      (index) => CardItem(
                        index: index,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ]),
        );
      },
    );
  }
}
