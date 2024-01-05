import 'package:rememberly/manager/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/models/crad_model.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(InitState());

  static HomeCubit get(context) => BlocProvider.of(context);

  List<CardGameModel> listOfCard = [
    CardGameModel(
      id: 1,
      image: 'assets/images/cherries.png',
    ),
    CardGameModel(
      id: 2,
      image: 'assets/images/chili.png',
    ),
    CardGameModel(
      id: 3,
      image: 'assets/images/grapes.png',
    ),
    CardGameModel(
      id: 4,
      image: 'assets/images/lemon.png',
    ),
    CardGameModel(
      id: 5,
      image: 'assets/images/orange.png',
    ),
    CardGameModel(
      id: 1,
      image: 'assets/images/cherries.png',
    ),
    CardGameModel(
      id: 7,
      image: 'assets/images/strawberry.png',
    ),
    CardGameModel(
      id: 8,
      image: 'assets/images/tomato.png',
    ),
    CardGameModel(
      id: 5,
      image: 'assets/images/orange.png',
    ),
    CardGameModel(
      id: 6,
      image: 'assets/images/pineapple.png',
    ),
    CardGameModel(
      id: 9,
      image: 'assets/images/watermelon.png',
    ),
    CardGameModel(
      id: 7,
      image: 'assets/images/strawberry.png',
    ),
    CardGameModel(
      id: 2,
      image: 'assets/images/chili.png',
    ),
    CardGameModel(
      id: 8,
      image: 'assets/images/tomato.png',
    ),
    CardGameModel(
      id: 4,
      image: 'assets/images/lemon.png',
    ),
    CardGameModel(
      id: 3,
      image: 'assets/images/grapes.png',
    ),
    CardGameModel(
      id: 6,
      image: 'assets/images/pineapple.png',
    ),
    CardGameModel(
      id: 9,
      image: 'assets/images/watermelon.png',
    ),
  ];

  List<int> indexList = [];
  void buildListItem(int index) {
        if(indexList.length<2)
          {
            listOfCard[index].isClicked = true;
            indexList.add(index);
            emit(IsClickedState());
            if (indexList.length == 2) {
              checkEquality().then((value) {
                indexList.clear();
              });

            }
          }
  }

  Future<void> checkEquality()async {
    if (listOfCard[indexList[0]].id != listOfCard[indexList[1]].id) {
      await Future.delayed(
        const Duration(seconds: 1),
        () {
          listOfCard[indexList[0]].isClicked = false;
          listOfCard[indexList[1]].isClicked = false;
          emit(NotEqualState());
        },
      );
    }
  }

  void reset()
  {
    for(var i in listOfCard)
      {
        i.isClicked=false;
      }
    listOfCard.shuffle();
    emit(IsClickedState());
  }
}
