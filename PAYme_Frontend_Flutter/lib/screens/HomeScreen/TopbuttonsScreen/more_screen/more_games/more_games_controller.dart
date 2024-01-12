import 'package:adn_pay/routes/app_pages.dart';

class GameOptionItems {
  final String route;
  final String logoUrl;
  final String text;
  GameOptionItems(
    this.route,
    this.logoUrl,
    this.text,
  );
}

List<GameOptionItems> gameoptionitems = [
  GameOptionItems(
    Routes.GAMESFLAPPYBIRDWEBVIEW,
    'https://png.pngitem.com/pimgs/s/184-1842460_flappy-bird-bird-png-transparent-png.png',
    'Flappy Bird',
  ),
  GameOptionItems(
    Routes.GAMESHITMASTER3DWEBVIEW,
    'https://play-lh.googleusercontent.com/C564oFYhhCCqbuCzqBltGyLwyHkg8Jinj49gxh5qmZRRdRVvZOUhv9aZNP4VskjUPts',
    'Hit Master 3D',
  ),
  GameOptionItems(
    Routes.GAMESHITCANWEBVIEW,
    'https://www.bestgames.com/thumb/Hit-Cans-3d.jpg',
    'Hit Can 3D',
  ),
  GameOptionItems(
    Routes.GAMESKRANKERWEBVIEW,
    'https://cdn.cloudflare.steamstatic.com/steam/apps/1408720/header.jpg?t=1640383553',
    'Krunker',
  ),
];
