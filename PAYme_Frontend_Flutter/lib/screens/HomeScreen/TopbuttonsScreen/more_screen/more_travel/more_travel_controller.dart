import 'package:adn_pay/routes/app_pages.dart';

class TravelOptionItems {
  final String route;
  final String logoUrl;
  final String text;
  TravelOptionItems(
    this.route,
    this.logoUrl,
    this.text,
  );
}

List<TravelOptionItems> traveloptionitems = [
  TravelOptionItems(
    Routes.TRAVELGOZAYAANHOTELBOOKINGWEBVIEW,
    'https://res.cloudinary.com/crunchbase-production/image/upload/c_lpad,f_auto,q_auto:eco,dpr_1/yad0cogspxu4tr9i1lrg',
    'GoZayaan Hotel Booking',
  ),
  TravelOptionItems(
    Routes.TRAVELAMYHOTELBOOKINGWEBVIEW,
    'https://www.amybd.com/nsite/images/logo.png',
    'Amy Hotel Booking',
  ),
  TravelOptionItems(
    Routes.TRAVELBOOKINGHOTELBOOKINGWEBVIEW,
    'https://logos-world.net/wp-content/uploads/2021/08/Booking-Logo.png',
    'Booking.com',
  ),
  TravelOptionItems(
    Routes.TRAVELKAYAKHOTELBOOKINGWEBVIEW,
    'http://assets.stickpng.com/images/589a4cb35aa6293a4aac48cc.png',
    'Kayak',
  ),
  TravelOptionItems(
    Routes.TRAVELAGODAHOTELBOOKINGWEBVIEW,
    'https://upload.wikimedia.org/wikipedia/en/c/cc/Agoda_mainlogo_stack_positive_ai_Main_Logo.jpg',
    'Agoda',
  ),
  TravelOptionItems(
    Routes.TRAVELBDBOOKINGHOTELBOOKINGWEBVIEW,
    'https://www.pngkit.com/png/detail/3-32366_bb-logo-design-png.png',
    'BD Booking',
  ),
  TravelOptionItems(
    Routes.TRAVELHOTELSDOTCOMHOTELBOOKINGWEBVIEW,
    'https://a.cdn-hotels.com/kesstatic/d3ecc1933ab5a9d9e4e6.png',
    'Hotels.com',
  ),
  TravelOptionItems(
    Routes.TRAVELTRIVAGOHOTELBOOKINGWEBVIEW,
    'https://download.logo.wine/logo/Trivago/Trivago-Logo.wine.png',
    'Trivago',
  ),
  TravelOptionItems(
    Routes.TRAVELWINROOMSHOTELBOOKINGWEBVIEW,
    'https://winrooms.com/uploads/global/og-fb.png',
    'Win Rooms Hotel Booking',
  ),
  TravelOptionItems(
    Routes.TRAVELMAKEMYTRIPHOTELBOOKINGWEBVIEW,
    'https://imgak.mmtcdn.com/pwa_v3/pwa_hotel_assets/header/logo@2x.png',
    'Make My Trip',
  ),
];
