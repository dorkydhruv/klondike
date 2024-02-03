import 'package:flame/game.dart';
import 'package:flutter/widgets.dart';
import 'package:klondike/klondike.dart';

void main() {
  final game = KlondikeGame();
  runApp(GameWidget(game: game));
}
