import 'package:flame/components.dart';
import 'package:flutter/foundation.dart';
import 'package:klondike/klondike.dart';

@immutable
class Suit {
  factory Suit.fromInt(int index) {
    assert(
      index >= 0 && index <= 3,
      'index is outside of the bounds of what a suit can be',
    );
    return _singleton[index];
  }
  Suit._(this.value, this.label, double x, double y, double w, double h)
      : sprite = klondikeSprite(x, y, w, h);
  final int value;
  final String label;
  final Sprite sprite;
  static final _singleton = [
    Suit._(0, '♥', 1176, 17, 172, 183),
    Suit._(1, '♦', 973, 14, 177, 182),
    Suit._(2, '♣', 974, 226, 184, 172),
    Suit._(3, '♠', 1178, 220, 176, 182),
  ];
  bool get isRed => value <= 1;
  bool get isBlack => value >= 2;
}
