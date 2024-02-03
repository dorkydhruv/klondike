import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:klondike/klondike.dart';

final Paint backBackgroundPaint = Paint()..color = const Color(0xff380c02);
final Paint backBorderPaint1 = Paint()
  ..color = const Color(0xffdbaf58)
  ..style = PaintingStyle.stroke
  ..strokeWidth = 10;
final Paint backBorderPaint2 = Paint()
  ..color = const Color(0x5CEF971B)
  ..style = PaintingStyle.stroke
  ..strokeWidth = 35;
final RRect cardRRect = RRect.fromRectAndRadius(
  KlondikeGame.cardSize.toRect(),
  const Radius.circular(KlondikeGame.cardRadius),
);
final RRect backRRectInner = cardRRect.deflate(40);
final Sprite flameSprite = klondikeSprite(1367, 6, 357, 501);
final Paint frontBackgroundPaint = Paint()..color = const Color(0xff000000);
final Paint redBorderPaint = Paint()
  ..color = const Color(0xffece8a3)
  ..style = PaintingStyle.stroke
  ..strokeWidth = 10;
final Paint blackBorderPaint = Paint()
  ..color = const Color(0xff7ab2e8)
  ..style = PaintingStyle.stroke
  ..strokeWidth = 10;
final Sprite redJack = klondikeSprite(81, 565, 562, 488);
final Sprite redQueen = klondikeSprite(717, 541, 486, 515);
final Sprite redKing = klondikeSprite(1305, 532, 407, 549);
final blueFilter = Paint()
  ..colorFilter = const ColorFilter.mode(
    Color(0x880d8bff),
    BlendMode.srcATop,
  );
final Sprite blackJack = klondikeSprite(81, 565, 562, 488)..paint = blueFilter;
final Sprite blackQueen = klondikeSprite(717, 541, 486, 515)
  ..paint = blueFilter;
final Sprite blackKing = klondikeSprite(1305, 532, 407, 549)
  ..paint = blueFilter;
