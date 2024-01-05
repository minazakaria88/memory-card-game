import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rememberly/manager/home_cubit.dart';
import 'package:rememberly/manager/home_state.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        var model = HomeCubit.get(context).listOfCard[index];
        return GestureDetector(
          onTap: () {
            HomeCubit.get(context).buildListItem(index);
          },
          child: Container(
            width: 100,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: model.isClicked
                    ? AssetImage(model.image)
                    : AssetImage(model.defaultImage),
              ),
            ),
          ),
        );
      },
    );
  }
}
