import 'package:adn_pay/routes/app_pages.dart';

class CoronaOptionItems {
  final String route;
  final String logoUrl;
  final String text;
  CoronaOptionItems(
    this.route,
    this.logoUrl,
    this.text,
  );
}

List<CoronaOptionItems> coronaoptionitems = [
  CoronaOptionItems(
    Routes.CORONASUROKKHAWEBVIEW,
    'https://surokkha.gov.bd/static/media/logo-f.5c608b98.png',
    'Surokkha',
  ),
  CoronaOptionItems(
    Routes.CORONAINFOWEBVIEW,
    'https://corona.gov.bd/static/media/logo.c81be60de8f0d34d3fb4.webp',
    'Latest Update',
  ),
  CoronaOptionItems(
    Routes.CORONAINFOWEBVIEW,
    'https://corona.gov.bd/static/media/logo.c81be60de8f0d34d3fb4.webp',
    'Hotline Numbers',
  ),
  CoronaOptionItems(
    Routes.CORONAINFOWEBVIEW,
    'https://corona.gov.bd/static/media/logo.c81be60de8f0d34d3fb4.webp',
    'Determine the Risk of Coronabirus',
  ),
  CoronaOptionItems(
    Routes.CORONAINFOWEBVIEW,
    'https://corona.gov.bd/static/media/logo.c81be60de8f0d34d3fb4.webp',
    'Corona Details Information',
  ),
];
