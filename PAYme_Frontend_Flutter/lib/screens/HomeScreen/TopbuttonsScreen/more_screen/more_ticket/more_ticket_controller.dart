import 'package:adn_pay/routes/app_pages.dart';
import 'package:flutter/material.dart';

class MoreTicketOptionItems {
  final String route;
  final IconData icon;
  final Color color;
  final String text;
  MoreTicketOptionItems(
    this.route,
    this.icon,
    this.color,
    this.text,
  );
}

List<MoreTicketOptionItems> moreticketoptionitems = [
  MoreTicketOptionItems(
    Routes.MOREAIRTICKET,
    Icons.airplane_ticket_outlined,
    Colors.redAccent,
    'Air',
  ),
  MoreTicketOptionItems(
    Routes.MOREBUSTICKET,
    Icons.bus_alert_outlined,
    Colors.deepPurple,
    'Bus',
  ),
  MoreTicketOptionItems(
    Routes.MORELAUNCHTICKET,
    Icons.water_sharp,
    Colors.indigo,
    'Launch',
  ),
  MoreTicketOptionItems(
    Routes.MORETRAINTICKET,
    Icons.train_sharp,
    Colors.pinkAccent,
    'Train',
  ),
];

class AirTicketOptionItems {
  final String route;
  final String logoUrl;
  final String text;
  AirTicketOptionItems(this.route, this.logoUrl, this.text);
}

List<AirTicketOptionItems> airticketoptionitems = [
  AirTicketOptionItems(
    Routes.AIRTICKETBDTICKETSWEBVIEW,
    'https://play-lh.googleusercontent.com/7r0YzGoeshGrIJyaKJVgDyAxtDuMRVL3O7Rl1Xp-AswD349DfJJrrIv5PpEyddphnL0',
    'bdtickets',
  ),
  AirTicketOptionItems(
    Routes.AIRTICKETFLIGHTEXPERTWEBVIEW,
    'https://play-lh.googleusercontent.com/pKebgE7Wh6M8_6MdVMIwTAtHb54ULtJIkm7uJtoPDgk6t7Izai6NtRXiOmk94Xuk6zU',
    'Flight Expert',
  ),
  AirTicketOptionItems(
    Routes.AIRTICKETGOZAYAANWEBVIEW,
    'https://res.cloudinary.com/crunchbase-production/image/upload/c_lpad,f_auto,q_auto:eco,dpr_1/yad0cogspxu4tr9i1lrg',
    'Go Zayaan',
  ),
  AirTicketOptionItems(
    Routes.AIRTICKETKAYAKWEBVIEW,
    'http://assets.stickpng.com/images/589a4cb35aa6293a4aac48cc.png',
    'Kayak',
  ),
  AirTicketOptionItems(
    Routes.AIRTICKETSHARETRIPWEBVIEW,
    'https://utility-assets.s3.amazonaws.com/media/assets/full-logo.png',
    'Share Trip',
  ),
  AirTicketOptionItems(
    Routes.AIRTICKETBUYAIRTICKETWEBVIEW,
    'https://www.buyairticket.com/ibe/images/logo1.png',
    'Buy Air Ticket',
  ),
  AirTicketOptionItems(
    Routes.AIRTICKETNOVOAIRWEBVIEW,
    'https://www.flynovoair.com/assets/images/logo-novoair2.png',
    'NOVOAIR',
  ),
  AirTicketOptionItems(
    Routes.AIRTICKETAMYWEBVIEW,
    'https://www.amybd.com/nsite/images/logo.png',
    'Amy BD',
  ),
];

class BusTicketOptionItems {
  final String route;
  final String logoUrl;
  final String text;
  BusTicketOptionItems(this.route, this.logoUrl, this.text);
}

List<BusTicketOptionItems> busticketoptionitems = [
  BusTicketOptionItems(
    Routes.BUSTICKETBDTICKETWEBVIEW,
    'https://play-lh.googleusercontent.com/7r0YzGoeshGrIJyaKJVgDyAxtDuMRVL3O7Rl1Xp-AswD349DfJJrrIv5PpEyddphnL0',
    'bdtickets',
  ),
  BusTicketOptionItems(
    Routes.BUSTICKETBUSBDWEBVIEW,
    'https://static.busbd.com.bd/busbdmedia/company_1z5smib3rljismtvjsuuhasx1t3kzfiewef',
    'BusBD',
  ),
  BusTicketOptionItems(
    Routes.BUSTICKETPARIBAHANWEBVIEW,
    'https://pbs.twimg.com/profile_images/771268358738055168/t4j_THAX_400x400.jpg',
    'paribahan.com',
  ),
  BusTicketOptionItems(
    Routes.BUSTICKETSHOHOZWEBVIEW,
    'https://www.shohoz.com/img/shohoz_logo_fb.png',
    'Shohoz Ticket',
  ),
  BusTicketOptionItems(
    Routes.BUSTICKETGOZAYAANWEBVIEW,
    'https://res.cloudinary.com/crunchbase-production/image/upload/c_lpad,f_auto,q_auto:eco,dpr_1/yad0cogspxu4tr9i1lrg',
    'Go Zayaan',
  ),
  BusTicketOptionItems(
    Routes.BUSTICKETNABILWEBVIEW,
    'https://www.nabilparibahan.com/img/busowners/subdomain/nabil-paribahan/logo.png',
    'Nabil Paribahan',
  ),
  BusTicketOptionItems(
    Routes.BUSTICKETGREENLINEWEBVIEW,
    'https://greenlinebd.com/wp-content/uploads/2020/08/glp-logo.png',
    'Greenline',
  ),
  BusTicketOptionItems(
    Routes.BUSTICKETSHYAMOLIWEBVIEW,
    'https://s3.amazonaws.com/busbdmedia/company_uhywumkfd6i9rc93cfr9bqej65epaz2lgn2',
    'Shyamoli Paribahan',
  ),
  BusTicketOptionItems(
    Routes.BUSTICKETSHOHAGHWEBVIEW,
    'https://shohagh.com/assets/img/logo-sp2.png',
    'Shohagh Paribahan',
  ),
  BusTicketOptionItems(
    Routes.BUSTICKETNATIONALWEBVIEW,
    'https://static.busbd.com.bd/busbdmedia/company_ne96itkqysvlj3i8tfglfspdp5m1czv7925',
    'National Paribahan',
  ),
];

class LaunchTicketOptionItems {
  final String route;
  final String logoUrl;
  final String text;
  LaunchTicketOptionItems(
    this.route,
    this.logoUrl,
    this.text,
  );
}

List<LaunchTicketOptionItems> launchticketoptionitem = [
  LaunchTicketOptionItems(
    Routes.LAUNCHTICKETBDTICKETWEBVIEW,
    'https://play-lh.googleusercontent.com/7r0YzGoeshGrIJyaKJVgDyAxtDuMRVL3O7Rl1Xp-AswD349DfJJrrIv5PpEyddphnL0',
    'bdtickets',
  ),
  LaunchTicketOptionItems(
    Routes.LAUNCHTICKETSHOHOZWEBVIEW,
    'https://www.shohoz.com/img/shohoz_logo_fb.png',
    'Shohoz Launch Ticket',
  ),
  LaunchTicketOptionItems(
    Routes.LAUNCHTICKETHUNTBDWEBVIEW,
    'https://www.huntbd.com/assets/images/logo.png',
    'Hunt BD',
  ),
  LaunchTicketOptionItems(
    Routes.LAUNCHTICKETSEATBOOKINGWEBVIEW,
    'https://seatbooking.com.bd/wp-content/uploads/2017/04/logo-seat-booking-bd.png',
    'Seat Booking',
  ),
];

class TrainTicketOptionItems {
  final String route;
  final String logoUrl;
  final String text;
  TrainTicketOptionItems(
    this.route,
    this.logoUrl,
    this.text,
  );
}

List<TrainTicketOptionItems> trainticketoptionitems = [
  TrainTicketOptionItems(
    Routes.TRAINTICKETBDRAILWAYWEBVIEW,
    'https://upload.wikimedia.org/wikipedia/en/6/62/Bangladesh_Railway_logo.jpg',
    'Bangladesh Reilway',
  ),
];
