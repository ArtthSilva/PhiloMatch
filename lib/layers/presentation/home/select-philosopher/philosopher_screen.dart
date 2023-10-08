import 'dart:developer';

import 'package:filo_master/layers/domain/models/philosopher_model.dart';
import 'package:filo_master/layers/presentation/favorites_philosophers/favorites_philo_screen.dart';
import 'package:filo_master/layers/presentation/home/select-philosopher/select_philosopher_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class PhilosopherScreen extends StatefulWidget {
  const PhilosopherScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<PhilosopherScreen> createState() => _PhilosopherScreenPageState();
}

class _PhilosopherScreenPageState extends State<PhilosopherScreen> {
  final CardSwiperController controller = CardSwiperController();

  final cards = philosopher.map(SelectPhilosopherComponent.new).toList();
   List<PhilosopherModel> favorites = [];
  int currentCardIndex = 0;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  favpage(List<PhilosopherModel> escolhidos) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => FavoritesScreen(escolhidos),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              child: CardSwiper(
                  controller: controller,
                  cardsCount: cards.length,
                  onSwipe: _onSwipe,
                  onUndo: _onUndo,
                  numberOfCardsDisplayed: cards.length,
                  backCardOffset: const Offset(40, 41),
                  padding: const EdgeInsets.only(
                      left: 28.0, right: 28, top: 78, bottom: 35),
                  cardBuilder: (
                    context,
                    index,
                    horizontalThresholdPercentage,
                    verticalThresholdPercentage,
                  ) {
                    currentCardIndex = index;
                    return cards[index];
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 38, right: 38, bottom: 38),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(
                    onPressed: controller.undo,
                    backgroundColor: Colors.white,
                    child:
                        const Icon(Icons.rotate_left, color: Color(0xFFFDD835)),
                  ),
                  FloatingActionButton(
                    onPressed: controller.swipeLeft,
                    backgroundColor: Colors.white,
                    child: const Icon(Icons.close_outlined, color: Colors.red),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        final currentPhilosopher =
                            philosopher[currentCardIndex];
                        currentPhilosopher.isFavorite =
                            !currentPhilosopher.isFavorite;

                        if (currentPhilosopher.isFavorite) {
                          favorites.add(currentPhilosopher);
                          log('o ${currentPhilosopher} foi add ao $favorites');
                        } else {
                          favorites.remove(currentPhilosopher);
                        }
                      });
                      controller.swipeRight();
                    },
                    backgroundColor: Colors.white,
                    child: const Icon(
                      Icons.favorite,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                  FloatingActionButton(
                      heroTag: 'favs', onPressed: () => favpage(favorites))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool _onSwipe(
    int previousIndex,
    int? currentIndex,
    CardSwiperDirection direction,
  ) {
    debugPrint(
      'O cartão $previousIndex foi passado para ${direction.name}. Agora o cartão $currentIndex está no topo',
    );
    return true;
  }

  bool _onUndo(
    int? previousIndex,
    int currentIndex,
    CardSwiperDirection direction,
  ) {
    debugPrint(
      'O cartão $currentIndex foi desfeito do ${direction.name}',
    );
    return true;
  }
}
