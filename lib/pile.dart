import 'package:klondike/components/card.dart';

abstract class Pile {
  bool canMove(Card card);

  bool canAccept(Card card);

  void removeCard(Card card);

  void acquireCard(Card card);

  void returnCard(Card card);
}
