import 'package:flame/components.dart';
import 'package:klondike/components/card.dart';
import 'package:klondike/klondike.dart';
import 'package:klondike/pile.dart';

class WastePile extends PositionComponent implements Pile {
  WastePile({super.position}) : super(size: KlondikeGame.cardSize);

  @override
  bool canMove(Card card) => _cards.isNotEmpty && card == _cards.last;
  final List<Card> _cards = [];

  @override
  void removeCard(Card card) {
    assert(canMove(card));
    _cards.removeLast();
    _fanOutTopCards();
  }

  @override
  void returnCard(Card card) {
    card.priority = _cards.indexOf(card);
    _fanOutTopCards();
  }

  void acquireCard(Card card) {
    assert(card.isFaceUp);
    card.position = position;
    card.priority = _cards.length;
    _cards.add(card);
    _fanOutTopCards();
    card.pile = this;
  }

  @override
  bool canAccept(Card card) => false;
  final _fanOffset = Vector2(KlondikeGame.cardWidth * 0.21, 0);

  void _fanOutTopCards() {
    final n = _cards.length;
    for (var i = 0; i < n; i++) {
      _cards[i].position = position;
    }
    if (n == 2) {
      _cards[1].position.add(_fanOffset);
    } else if (n >= 3) {
      _cards[n - 2].position.add(_fanOffset);
      _cards[n - 1].position.addScaled(_fanOffset, 2);
    }
  }

  List<Card> removeAllCards() {
    final cards = List.of(_cards);
    _cards.clear();
    return cards;
  }
}
