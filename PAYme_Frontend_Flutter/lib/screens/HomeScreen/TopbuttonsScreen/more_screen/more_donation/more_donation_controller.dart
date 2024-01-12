import 'package:adn_pay/routes/app_pages.dart';

class DonationOptionItems {
  final String route;
  final String logoUrl;
  final String text;
  DonationOptionItems(this.route, this.logoUrl, this.text);
}

List<DonationOptionItems> donationoptionitem = [
  DonationOptionItems(
    Routes.DONATIONJAAGOWEBVIEW,
    'https://www.jaago.com.bd/wp-content/uploads/2020/12/128853135_4727333110674231_1858607543579170095_n.png',
    'JAAGO Foundation',
  ),
  DonationOptionItems(
    Routes.DONATIONBIDYANONDOWEBVIEW,
    'https://bidyanondo.org/uploads/settings/logo.png',
    'Bidyanondo',
  ),
  DonationOptionItems(
    Routes.DONATIONALTERYOUTHWEBVIEW,
    'https://www.expo2020dubai.com/-/media/expo2020/expo-live/global-innovators/alter-youth-limited/alteryouthlimited-logo.png',
    'Alter Youth',
  ),
  DonationOptionItems(
    Routes.DONATIONASSUNNAHWEBVIEW,
    'https://assunnahfoundation.org/static/media/logo-white.7ff767ec.png',
    'As-sunnah Foundation',
  ),
  DonationOptionItems(
    Routes.DONATIONBRACWEBVIEW,
    'http://response.brac.net/wp-content/uploads/2018/08/brac-logo-magenta.png',
    'BRAC',
  ),
  DonationOptionItems(
    Routes.DONATIONEKTAKAYAHARWEBVIEW,
    'https://onetakameal.org/uploads/ahar_settings/logo.jpg',
    'Ek Takay Ahar',
  ),
  DonationOptionItems(
    Routes.DONATIONFOODFORALLWEBVIEW,
    'https://i.pinimg.com/280x280_RS/7d/e1/06/7de106e8bf60757d5a399c31c2fd1e8e.jpg',
    'Food For All - Khukumoni Foundation',
  ),
  DonationOptionItems(
    Routes.DONATIONHUMANAIDWEBVIEW,
    'https://humanaidbd.org/wp-content/uploads/2020/05/Logo-Human-Aid-Bangladesh.png',
    'Human Aid Bangladesh Foundation',
  ),
  DonationOptionItems(
    Routes.DONATIONMASTULWEBVIEW,
    'https://www.mastul.net/wp-content/uploads/2017/06/Mastul_logo.png',
    'Mastul Foundation',
  ),
  DonationOptionItems(
    Routes.DONATIONSAJIDAWEBVIEW,
    'https://sajidafoundation.org/wp-content/uploads/2016/02/SAJIDA-Logo-for-website_OUTLINED-2.png',
    'Sajida Foundation',
  ),
];
