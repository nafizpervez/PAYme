import 'package:adn_pay/routes/app_pages.dart';

class FoodOptionItems {
  final String route;
  final String logoUrl;
  final String text;
  FoodOptionItems(
    this.route,
    this.logoUrl,
    this.text,
  );
}

List<FoodOptionItems> foodoptionitems = [
  FoodOptionItems(
    Routes.FOODPIZZAHUTWEBVIEW,
    'https://www.pizzahutbd.com/front/assets/imgs/home-logo.png',
    'Pizza Hut',
  ),
  FoodOptionItems(
    Routes.FOODPANDAWEBVIEW,
    'https://1000logos.net/wp-content/uploads/2021/02/FoodPanda-logo.png',
    'Food Panda',
  ),
  FoodOptionItems(
    Routes.FOODHUNGRYNAKIWEBVIEW,
    'https://jotodeal.com/wp-content/uploads/thumbs_dir/HungryNaki-1xrjyzhesikpfdsoim6064k4jn8uuo1pauqp6yb7gv8k.png',
    'Hungry Naki',
  ),
  FoodOptionItems(
    Routes.UPOHARFOODCOURTWEBVIEW,
    'https://www.upoharbd.com/skins/upohar/styleImages/UpoharBD.jpg',
    'Upohar Food Court',
  ),
  FoodOptionItems(
    Routes.SHEBAFOODWEBVIEW,
    'https://res.cloudinary.com/crunchbase-production/image/upload/c_lpad,f_auto,q_auto:eco,dpr_1/whq4vvd6pt4ek3ukzznl',
    'Sheba Food',
  ),
];
