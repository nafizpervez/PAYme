import 'package:adn_pay/screens/HomeScreen/TopbuttonsScreen/pay_bill_screen/pay_education_bill/pay_education_bill_binding.dart';
import 'package:adn_pay/screens/HomeScreen/TopbuttonsScreen/pay_bill_screen/pay_gas_bill/pay_gas_bill_binding.dart';
import 'package:adn_pay/screens/HomeScreen/home_screen.dart';
import 'package:adn_pay/screens/Inbox/inbox_screen.dart';
import 'package:adn_pay/screens/Login_auth/login_binding.dart';
import 'package:adn_pay/screens/Login_auth/login_screen.dart';
import 'package:adn_pay/screens/Profile/profile_binding.dart';
import 'package:adn_pay/screens/Profile/profile_edit.dart';
import 'package:adn_pay/screens/Register/register_screen.dart';
import 'package:adn_pay/widgets/global/common_pages/bill_pay_successful.dart';
import 'package:get/get.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_corona/more_corona_index.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_corona/webview_pages/more_corona_coronai_info_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_corona/webview_pages/mroe_corona_surokkha_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_donation/more_donation.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_donation/webview_pages/more_donation_alter_youth_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_donation/webview_pages/more_donation_assunnah_foundation_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_donation/webview_pages/more_donation_bidyanondo_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_donation/webview_pages/more_donation_brac_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_donation/webview_pages/more_donation_ek_takay_ahar_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_donation/webview_pages/more_donation_food_for_all_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_donation/webview_pages/more_donation_human_aid_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_donation/webview_pages/more_donation_jaago_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_donation/webview_pages/more_donation_mastul_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_donation/webview_pages/more_donation_sajida_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_food/more_food.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_food/webview_pages/more_food_food_panda_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_food/webview_pages/more_food_hungrynaki_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_food/webview_pages/more_food_pizza_hut_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_food/webview_pages/more_food_sheba_food_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_food/webview_pages/more_food_upoharbd_food_court_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_games/more_games.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_games/webview_pages/more_games_flappy_bird_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_games/webview_pages/more_games_hit_can_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_games/webview_pages/more_games_hit_master_3d_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_games/webview_pages/more_games_krunker_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_insurance/more_insurance.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_insurance/webview_pages/more_insurance_guardian_life_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_insurance/webview_pages/more_insurance_milvik_bd_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_screen.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_shopping/more_shopping.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_shopping/webview_pages/more_shopping_ajkerdeal_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_shopping/webview_pages/more_shopping_bdshop_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_shopping/webview_pages/more_shopping_chaldal_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_shopping/webview_pages/more_shopping_jadro_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_shopping/webview_pages/more_shopping_kablewala_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_shopping/webview_pages/more_shopping_menaclick_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_shopping/webview_pages/more_shopping_othoba_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_shopping/webview_pages/more_shopping_pikaboo_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_shopping/webview_pages/more_shopping_priyoshop_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_shopping/webview_pages/more_shopping_shajgoh_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_shopping/webview_pages/more_shopping_swapno_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_ticket/air_ticket/more_air_ticket.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_ticket/air_ticket/webview_pages/more_air_ticket_air_ticket_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_ticket/air_ticket/webview_pages/more_air_ticket_amy_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_ticket/air_ticket/webview_pages/more_air_ticket_bd_ticket_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_ticket/air_ticket/webview_pages/more_air_ticket_biman_bd_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_ticket/air_ticket/webview_pages/more_air_ticket_flight_expert_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_ticket/air_ticket/webview_pages/more_air_ticket_go_zayaan_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_ticket/air_ticket/webview_pages/more_air_ticket_kayak_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_ticket/air_ticket/webview_pages/more_air_ticket_novoair_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_ticket/air_ticket/webview_pages/more_air_ticket_share_trip_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_ticket/bus_ticket/more_bus_ticket.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_ticket/bus_ticket/webview_pages/more_bus_ticket_bd_ticket_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_ticket/bus_ticket/webview_pages/more_bus_ticket_bus_bd_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_ticket/bus_ticket/webview_pages/more_bus_ticket_gozayaan_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_ticket/bus_ticket/webview_pages/more_bus_ticket_greenline_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_ticket/bus_ticket/webview_pages/more_bus_ticket_nabil_paribahan_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_ticket/bus_ticket/webview_pages/more_bus_ticket_national_travel_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_ticket/bus_ticket/webview_pages/more_bus_ticket_paribahan_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_ticket/bus_ticket/webview_pages/more_bus_ticket_shohagh_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_ticket/bus_ticket/webview_pages/more_bus_ticket_shohoz_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_ticket/bus_ticket/webview_pages/more_bus_ticket_shyamoli_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_ticket/launch_ticket/more_launch_ticket.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_ticket/launch_ticket/webview_pages/more_launch_ticket_bd_ticket_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_ticket/launch_ticket/webview_pages/more_launch_ticket_huntbd_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_ticket/launch_ticket/webview_pages/more_launch_ticket_seat_booking_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_ticket/launch_ticket/webview_pages/more_launch_ticket_shohoz_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_ticket/more_ticket.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_ticket/train_ticket/more_train_ticket.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_ticket/train_ticket/webview_pages/more_train_ticket_bd_railway_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_travel/hotel_booking/more_travel_agoda_hotel_booking_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_travel/hotel_booking/more_travel_amy_hotel_booking_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_travel/hotel_booking/more_travel_bd_booking_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_travel/hotel_booking/more_travel_booking_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_travel/hotel_booking/more_travel_go_zayaan_hotel_booking_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_travel/hotel_booking/more_travel_hotels_dot_com_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_travel/hotel_booking/more_travel_kayak_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_travel/hotel_booking/more_travel_make_my_trip_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_travel/hotel_booking/more_travel_trivago_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_travel/hotel_booking/more_travel_winroom_webview.dart';
import '../screens/HomeScreen/TopbuttonsScreen/more_screen/more_travel/more_travel.dart';
import '../screens/HomeScreen/TopbuttonsScreen/pay_bill_screen/pay_education_bill/pay_education_bill_index.dart';
import '../screens/HomeScreen/TopbuttonsScreen/pay_bill_screen/pay_education_bill/pay_education_bill_period.dart';
import '../screens/HomeScreen/TopbuttonsScreen/pay_bill_screen/pay_education_bill/pay_education_bill_saved_bills.dart';
import '../screens/HomeScreen/TopbuttonsScreen/pay_bill_screen/pay_electric_bill/Paybill_Sections/BPDB/pay_BPDB_postpaid.dart';
import '../screens/HomeScreen/TopbuttonsScreen/pay_bill_screen/pay_electric_bill/Paybill_Sections/BPDB/pay_BPDB_prepaid.dart';
import '../screens/HomeScreen/TopbuttonsScreen/pay_bill_screen/pay_electric_bill/Paybill_Sections/DESCO/pay_DESCO_postpaid.dart';
import '../screens/HomeScreen/TopbuttonsScreen/pay_bill_screen/pay_electric_bill/Paybill_Sections/DESCO/pay_DESCO_prepaid.dart';
import '../screens/HomeScreen/TopbuttonsScreen/pay_bill_screen/pay_electric_bill/Paybill_Sections/DPDC/pay_DPDC_postpaid.dart';
import '../screens/HomeScreen/TopbuttonsScreen/pay_bill_screen/pay_electric_bill/Paybill_Sections/DPDC/pay_DPDC_prepaid.dart';
import '../screens/HomeScreen/TopbuttonsScreen/pay_bill_screen/pay_electric_bill/Paybill_Sections/NESCO/pay_NESCO_postpaid.dart';
import '../screens/HomeScreen/TopbuttonsScreen/pay_bill_screen/pay_electric_bill/Paybill_Sections/NESCO/pay_NESCO_prepaid.dart';
import '../screens/HomeScreen/TopbuttonsScreen/pay_bill_screen/pay_electric_bill/Paybill_Sections/WestZone/pay_WESTZONE_postpaid.dart';
import '../screens/HomeScreen/TopbuttonsScreen/pay_bill_screen/pay_electric_bill/Paybill_Sections/WestZone/pay_WESTZONE_prepaid.dart';
import '../screens/HomeScreen/TopbuttonsScreen/pay_bill_screen/pay_electric_bill/pay_electric_bill_binding.dart';
import '../screens/HomeScreen/TopbuttonsScreen/pay_bill_screen/pay_electric_bill/pay_electric_bill_index.dart';
import '../screens/HomeScreen/TopbuttonsScreen/pay_bill_screen/pay_electric_bill/pay_electric_bill_saved_bills.dart';
import '../screens/HomeScreen/TopbuttonsScreen/pay_bill_screen/pay_gas_bill/pay_gas_bill_index.dart';
import '../screens/HomeScreen/TopbuttonsScreen/pay_bill_screen/pay_gas_bill/pay_gas_bill_period.dart';
import '../screens/HomeScreen/TopbuttonsScreen/pay_bill_screen/pay_gas_bill/pay_gas_bill_saved_bills.dart';
import '../screens/HomeScreen/TopbuttonsScreen/pay_bill_screen/pay_internet_bill/pay_internet_bill_binding.dart';
import '../screens/HomeScreen/TopbuttonsScreen/pay_bill_screen/pay_internet_bill/pay_internet_bill_index.dart';
import '../screens/HomeScreen/TopbuttonsScreen/pay_bill_screen/pay_internet_bill/pay_internet_bill_period.dart';
import '../screens/HomeScreen/TopbuttonsScreen/pay_bill_screen/pay_internet_bill/pay_internet_bill_saved_bills.dart';
import '../screens/HomeScreen/TopbuttonsScreen/pay_bill_screen/pay_tv_bill/pay_tv_bill_binding.dart';
import '../screens/HomeScreen/TopbuttonsScreen/pay_bill_screen/pay_tv_bill/pay_tv_bill_index.dart';
import '../screens/HomeScreen/TopbuttonsScreen/pay_bill_screen/pay_tv_bill/pay_tv_bill_period.dart';
import '../screens/HomeScreen/TopbuttonsScreen/pay_bill_screen/pay_tv_bill/pay_tv_bill_saved_bill.dart';
import '../screens/HomeScreen/TopbuttonsScreen/pay_bill_screen/pay_water_bill/pay_water_bill_binding.dart';
import '../screens/HomeScreen/TopbuttonsScreen/pay_bill_screen/pay_water_bill/pay_water_bill_index.dart';
import '../screens/HomeScreen/TopbuttonsScreen/pay_bill_screen/pay_water_bill/pay_water_bill_period.dart';
import '../screens/HomeScreen/TopbuttonsScreen/pay_bill_screen/pay_water_bill/pay_water_bill_saved_bill.dart';
import '../screens/Profile/profile.dart';
part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      title: 'Login',
      name: Routes.LOGIN,
      binding: AuthBinding(),
      page: () => const LoginADNPAY(),
    ),
    GetPage(
      title: 'Register',
      name: Routes.REGISTER,
      binding: AuthBinding(),
      page: () => const RegisterUsers(),
    ),
    GetPage(
      title: 'Initial',
      name: Routes.INITIAL,
      binding: AuthBinding(),
      page: () => const AdnPayPage(),
    ),
    GetPage(
      title: 'Profile',
      name: Routes.PROFILE,
      binding: AuthBinding(),
      page: () => ProfileDetails(),
    ),
    GetPage(
      title: 'More',
      name: Routes.MORE,
      binding: AuthBinding(),
      page: () => const MoreScreen(),
    ),
    GetPage(
      title: 'Inbox',
      name: Routes.INBOX,
      binding: AuthBinding(),
      page: () => const InboxScreen(),
    ),
    GetPage(
      title: 'Pay Electricity Bill',
      name: Routes.PAYELECTRICBILL,
      binding: AuthBinding(),
      page: () => const PayElectricBill(),
    ),
    GetPage(
      title: 'Pay Gas Bill',
      name: Routes.PAYGASBILL,
      binding: AuthBinding(),
      page: () => const PayGasBill(),
    ),
    GetPage(
      title: 'Pay Water Bill',
      name: Routes.PAYWATERBILL,
      binding: AuthBinding(),
      page: () => const PayWaterBill(),
    ),
    GetPage(
      title: 'Pay Internet Bill',
      name: Routes.PAYINTERNETBILL,
      binding: AuthBinding(),
      page: () => const PayInternetBill(),
    ),
    GetPage(
      title: 'Pay TV Bill',
      name: Routes.PAYTVBILL,
      binding: AuthBinding(),
      page: () => const PayTVBill(),
    ),
    GetPage(
      title: 'Pay Educational Bill',
      name: Routes.PAYEDUCATIONBILL,
      binding: AuthBinding(),
      page: () => const PayEducationBill(),
    ),
    GetPage(
      title: 'More Ticket',
      name: Routes.MORETICKETINDEX,
      binding: AuthBinding(),
      page: () => const MoreTicketIndex(),
    ),
    GetPage(
      title: 'More Travel',
      name: Routes.MORETRAVELINDEX,
      binding: AuthBinding(),
      page: () => const MoreTravelIndex(),
    ),
    GetPage(
      title: 'More Insurance',
      name: Routes.MOREINSURANCEINDEX,
      binding: AuthBinding(),
      page: () => const MoreInsuranceIndex(),
    ),
    GetPage(
      title: 'More Games',
      name: Routes.MOREGAMESINDEX,
      binding: AuthBinding(),
      page: () => const MoreGamesIndex(),
    ),
    GetPage(
      title: 'More Shopping',
      name: Routes.MORESHOPPINGINDEX,
      binding: AuthBinding(),
      page: () => const MoreShoppingIndex(),
    ),
    GetPage(
      title: 'More Donation',
      name: Routes.MOREDONATIONINDEX,
      binding: AuthBinding(),
      page: () => const MoreDonationIndex(),
    ),
    GetPage(
      title: 'More Food',
      name: Routes.MOREFOODINDEX,
      binding: AuthBinding(),
      page: () => const MoreFoodIndex(),
    ),
    GetPage(
      title: 'More Corona',
      name: Routes.MORECORONAINDEX,
      binding: AuthBinding(),
      page: () => const MoreCoronaIndex(),
    ),
    GetPage(
      title: 'Pay Educational Bill Period',
      name: Routes.PAYEDUCATIONBILLPERIOD,
      binding: EducationBillBinding(),
      page: () => const PayEducationBillPeriod(),
    ),
    GetPage(
      title: 'Bill Confirmation',
      name: Routes.BILLCONFIRMATION,
      binding: AuthBinding(),
      page: () => const BillPaySuccessful(),
    ),
    GetPage(
      title: 'Pay TV Bill Period',
      name: Routes.PAYTVBILLPERIOD,
      binding: TvBillBinding(),
      page: () => PayTVBillPeriod(),
    ),
    GetPage(
      title: 'Pay Internet Bill Period',
      name: Routes.PAYINTERNETBILLPERIOD,
      binding: InternetBillBinding(),
      page: () => const PayInternetBillPeriod(),
    ),
    GetPage(
      title: 'Pay Water Bill Period',
      name: Routes.PAYWATERBILLPERIOD,
      binding: WaterBillBinding(),
      page: () => const PayWaterBillPeriod(),
    ),
    GetPage(
      title: 'Pay Gas Bill Period',
      name: Routes.PAYGASBILLPERIOD,
      binding: GasBillBinding(),
      page: () => const PayGasBillPeriod(),
    ),
    GetPage(
      title: 'Pay NESCO Prepaid',
      name: Routes.PAYPREPAIDNESCO,
      binding: ElectricBillBinding(),
      page: () => const PayPrepaidNESCO(),
    ),
    GetPage(
      title: 'Pay NESCO Postpaid',
      name: Routes.PAYPOSTPAIDNESCO,
      binding: ElectricBillBinding(),
      page: () => const PayPostpaidNESCO(),
    ),
    GetPage(
      title: 'Pay DESCO Prepaid',
      name: Routes.PAYPREPAIDDESCO,
      binding: ElectricBillBinding(),
      page: () => const PayPrepaidDESCO(),
    ),
    GetPage(
      title: 'Pay DESCO Postpaid',
      name: Routes.PAYPOSTPAIDDESCO,
      binding: ElectricBillBinding(),
      page: () => const PayPostpaidDESCO(),
    ),
    GetPage(
      title: 'Pay DPDC Prepaid',
      name: Routes.PAYPREPAIDDPDC,
      binding: ElectricBillBinding(),
      page: () => const PayPrepaidDPDC(),
    ),
    GetPage(
      title: 'Pay DPDC Postpaid',
      name: Routes.PAYPOSTPAIDDPDC,
      binding: ElectricBillBinding(),
      page: () => const PayPostpaidDPDC(),
    ),
    GetPage(
      title: 'Pay BPDB Prepaid',
      name: Routes.PAYPREPAIDBPDB,
      binding: ElectricBillBinding(),
      page: () => const PayPrepaidBPDB(),
    ),
    GetPage(
      title: 'Pay BPDB Postpaid',
      name: Routes.PAYPOSTPAIDBPDB,
      binding: ElectricBillBinding(),
      page: () => const PayPostpaidBPDB(),
    ),
    GetPage(
      title: 'Pay Westzone Prepaid',
      name: Routes.PAYPREPAIDWESTZONE,
      binding: ElectricBillBinding(),
      page: () => const PayPrepaidWESTZONE(),
    ),
    GetPage(
      title: 'Pay Westzone Postpaid',
      name: Routes.PAYPOSTPAIDWESTZONE,
      binding: ElectricBillBinding(),
      page: () => const PayPostpaidWESTZONE(),
    ),
    GetPage(
      title: 'Electric Saved Bills',
      name: Routes.ELECTRICSAVEDBILLS,
      binding: ElectricBillBinding(),
      page: () => ElectricSavedBills(),
    ),
    GetPage(
      title: 'Gas Saved Bills',
      name: Routes.GASSAVEDBILLS,
      binding: GasBillBinding(),
      page: () => GasSavedBill(),
    ),
    GetPage(
      title: 'Internet Saved Bills',
      name: Routes.INTERNETSAVEDBILLS,
      binding: InternetBillBinding(),
      page: () => InternetSavedBill(),
    ),
    GetPage(
      title: 'Education Saved Bills',
      name: Routes.EDUCATIONSAVEDBILLS,
      binding: EducationBillBinding(),
      page: () => EducationSavedBill(),
    ),
    GetPage(
      title: 'Tv Saved Bills',
      name: Routes.TVSAVEDBILLS,
      binding: TvBillBinding(),
      page: () => TvSavedBill(),
    ),
    GetPage(
      title: 'Water Saved Bills',
      name: Routes.WATERSAVEDBILLS,
      binding: WaterBillBinding(),
      page: () => WaterSavedBill(),
    ),
    GetPage(
      title: 'Air Ticket',
      name: Routes.MOREAIRTICKET,
      binding: AuthBinding(),
      page: () => const MoreAirTicket(),
    ),
    GetPage(
      title: 'Air Ticket BD Tickets',
      name: Routes.AIRTICKETBDTICKETSWEBVIEW,
      binding: AuthBinding(),
      page: () => AirTicketBdTicketsWebview(),
    ),
    GetPage(
      title: 'Air Ticket Flight Expert',
      name: Routes.AIRTICKETFLIGHTEXPERTWEBVIEW,
      binding: AuthBinding(),
      page: () => AirTicketFlightExpertWebview(),
    ),
    GetPage(
      title: 'Air Ticket Go Zayaan',
      name: Routes.AIRTICKETGOZAYAANWEBVIEW,
      binding: AuthBinding(),
      page: () => AirTicketGoZayaanWebview(),
    ),
    GetPage(
      title: 'Air Ticket Kayak',
      name: Routes.AIRTICKETKAYAKWEBVIEW,
      binding: AuthBinding(),
      page: () => AirTicketKayakWebview(),
    ),
    GetPage(
      title: 'Air Ticket Share Trip',
      name: Routes.AIRTICKETSHARETRIPWEBVIEW,
      binding: AuthBinding(),
      page: () => AirTicketShareTripWebview(),
    ),
    GetPage(
      title: 'Air Ticket Buy Air Ticket',
      name: Routes.AIRTICKETBUYAIRTICKETWEBVIEW,
      binding: AuthBinding(),
      page: () => AirTicketBuyAirTicketWebview(),
    ),
    GetPage(
      title: 'Air Ticket BimanBD',
      name: Routes.AIRTICKETBIMANBDWEBVIEW,
      binding: AuthBinding(),
      page: () => AirTicketBimanBDWebview(),
    ),
    GetPage(
      title: 'Air Ticket Novoair',
      name: Routes.AIRTICKETNOVOAIRWEBVIEW,
      binding: AuthBinding(),
      page: () => AirTicketNovoairWebview(),
    ),
    GetPage(
      title: 'Air Ticket Amy',
      name: Routes.AIRTICKETAMYWEBVIEW,
      binding: AuthBinding(),
      page: () => AirTicketAmyWebview(),
    ),
    GetPage(
      title: 'Bus Ticket',
      name: Routes.MOREBUSTICKET,
      binding: AuthBinding(),
      page: () => const MoreBusTicket(),
    ),
    GetPage(
      title: 'Bus Ticket Bd Tickets',
      name: Routes.BUSTICKETBDTICKETWEBVIEW,
      binding: AuthBinding(),
      page: () => BusTicketBdTicketsWebview(),
    ),
    GetPage(
      title: 'Bus Ticket Bus Bd',
      name: Routes.BUSTICKETBUSBDWEBVIEW,
      binding: AuthBinding(),
      page: () => BusTicketBusBdWebview(),
    ),
    GetPage(
      title: 'Bus Ticket Paribahan.com',
      name: Routes.BUSTICKETPARIBAHANWEBVIEW,
      binding: AuthBinding(),
      page: () => BusTicketParibahanWebview(),
    ),
    GetPage(
      title: 'Bus Ticket Shohoz',
      name: Routes.BUSTICKETSHOHOZWEBVIEW,
      binding: AuthBinding(),
      page: () => BusTicketShohozWebview(),
    ),
    GetPage(
      title: 'Bus Ticket Go Zayaan',
      name: Routes.BUSTICKETGOZAYAANWEBVIEW,
      binding: AuthBinding(),
      page: () => BusTicketGoZayaanWebview(),
    ),
    GetPage(
      title: 'Bus Ticket Nabil Paribahan',
      name: Routes.BUSTICKETNABILWEBVIEW,
      binding: AuthBinding(),
      page: () => BusTicketNabilParibahanWebview(),
    ),
    GetPage(
      title: 'Bus Ticket GreenLine',
      name: Routes.BUSTICKETGREENLINEWEBVIEW,
      binding: AuthBinding(),
      page: () => BusTicketGreenLineWebview(),
    ),
    GetPage(
      title: 'Bus Ticket Shyamoli',
      name: Routes.BUSTICKETSHYAMOLIWEBVIEW,
      binding: AuthBinding(),
      page: () => BusTicketShyamoliWebview(),
    ),
    GetPage(
      title: 'Bus Ticket Shohagh',
      name: Routes.BUSTICKETSHOHAGHWEBVIEW,
      binding: AuthBinding(),
      page: () => BusTicketShohaghWebview(),
    ),
    GetPage(
      title: 'Bus Ticket National Paribahan',
      name: Routes.BUSTICKETNATIONALWEBVIEW,
      binding: AuthBinding(),
      page: () => BusTicketNationalParibahanWebview(),
    ),
    GetPage(
      title: 'Launch Ticket',
      name: Routes.MORELAUNCHTICKET,
      binding: AuthBinding(),
      page: () => const MoreLaunchTicket(),
    ),
    GetPage(
      title: 'Launch Ticket bd ticket',
      name: Routes.LAUNCHTICKETBDTICKETWEBVIEW,
      binding: AuthBinding(),
      page: () => LaunchTicketBdTicketWebview(),
    ),
    GetPage(
      title: 'Launch Ticket Shohoz',
      name: Routes.LAUNCHTICKETSHOHOZWEBVIEW,
      binding: AuthBinding(),
      page: () => LaunchTicketShohozWebview(),
    ),
    GetPage(
      title: 'Launch Ticket HuntBD',
      name: Routes.LAUNCHTICKETHUNTBDWEBVIEW,
      binding: AuthBinding(),
      page: () => LaunchTicketHuntBdWebview(),
    ),
    GetPage(
      title: 'Launch Ticket Seat Booking',
      name: Routes.LAUNCHTICKETSEATBOOKINGWEBVIEW,
      binding: AuthBinding(),
      page: () => LaunchTicketSeatBookingWebview(),
    ),
    GetPage(
      title: 'Train Ticket',
      name: Routes.MORETRAINTICKET,
      binding: AuthBinding(),
      page: () => const MoreTrainTicket(),
    ),
    GetPage(
      title: 'Train Ticket',
      name: Routes.TRAINTICKETBDRAILWAYWEBVIEW,
      binding: AuthBinding(),
      page: () => TrainTicketBdRailwayWebview(),
    ),
    GetPage(
      title: 'Travel Go Zayaan Hotel Booking ',
      name: Routes.TRAVELGOZAYAANHOTELBOOKINGWEBVIEW,
      binding: AuthBinding(),
      page: () => GoZayaanHotelBooking(),
    ),
    GetPage(
      title: 'Travel Amy Hotel Booking ',
      name: Routes.TRAVELAMYHOTELBOOKINGWEBVIEW,
      binding: AuthBinding(),
      page: () => AmyHotelBooking(),
    ),
    GetPage(
      title: 'Travel Booking.com Hotel Booking ',
      name: Routes.TRAVELBOOKINGHOTELBOOKINGWEBVIEW,
      binding: AuthBinding(),
      page: () => BookingHotelBooking(),
    ),
    GetPage(
      title: 'Travel Kayak Hotel Booking ',
      name: Routes.TRAVELKAYAKHOTELBOOKINGWEBVIEW,
      binding: AuthBinding(),
      page: () => KayakHotelBooking(),
    ),
    GetPage(
      title: 'Travel Agoda Hotel Booking ',
      name: Routes.TRAVELAGODAHOTELBOOKINGWEBVIEW,
      binding: AuthBinding(),
      page: () => AgodaHotelBooking(),
    ),
    GetPage(
      title: 'Travel BDBooking Hotel Booking ',
      name: Routes.TRAVELBDBOOKINGHOTELBOOKINGWEBVIEW,
      binding: AuthBinding(),
      page: () => BDBookingHotelBooking(),
    ),
    GetPage(
      title: 'Travel hotels_dot_com Hotel Booking ',
      name: Routes.TRAVELHOTELSDOTCOMHOTELBOOKINGWEBVIEW,
      binding: AuthBinding(),
      page: () => HotelsDotComHotelBooking(),
    ),
    GetPage(
      title: 'Travel Trivago Hotel Booking ',
      name: Routes.TRAVELTRIVAGOHOTELBOOKINGWEBVIEW,
      binding: AuthBinding(),
      page: () => TrivagoHotelBooking(),
    ),
    GetPage(
      title: 'Travel WinRooms Hotel Booking ',
      name: Routes.TRAVELWINROOMSHOTELBOOKINGWEBVIEW,
      binding: AuthBinding(),
      page: () => WinTripHotelBooking(),
    ),
    GetPage(
      title: 'Travel MakeMyTrip Hotel Booking ',
      name: Routes.TRAVELMAKEMYTRIPHOTELBOOKINGWEBVIEW,
      binding: AuthBinding(),
      page: () => MakeMyTripHotelBooking(),
    ),
    GetPage(
      title: 'Insurance Golder Life',
      name: Routes.INSURANCEGUARDIANLIFEWEBVIEW,
      binding: AuthBinding(),
      page: () => InsuranceGolderLife(),
    ),
    GetPage(
      title: 'Insurance Milvik Bd',
      name: Routes.INSURANCEMILVIKBDWEBVIEW,
      binding: AuthBinding(),
      page: () => InsuranceMilvikBD(),
    ),
    GetPage(
      title: 'Shopping Ajker Deal',
      name: Routes.SHOPPINGAJKERDEALWEBVIEW,
      binding: AuthBinding(),
      page: () => ShoppingAjkerDeal(),
    ),
    GetPage(
      title: 'Shopping Shajgoj',
      name: Routes.SHOPPINGSHAJGOJWEBVIEW,
      binding: AuthBinding(),
      page: () => ShoppingShajgoj(),
    ),
    GetPage(
      title: 'Shopping Bd shop',
      name: Routes.SHOPPINGBDSHOPWEBVIEW,
      binding: AuthBinding(),
      page: () => ShoppingBDShops(),
    ),
    GetPage(
      title: 'Shopping Othoba',
      name: Routes.SHOPPINGOTHOBAWEBVIEW,
      binding: AuthBinding(),
      page: () => ShoppingOthoba(),
    ),
    GetPage(
      title: 'Shopping Priyo Shop',
      name: Routes.SHOPPINGPRIYOSHOPWEBVIEW,
      binding: AuthBinding(),
      page: () => ShoppingPriyoShop(),
    ),
    GetPage(
      title: 'Shopping Pikaboo',
      name: Routes.SHOPPINGPIKABOOWEBVIEW,
      binding: AuthBinding(),
      page: () => ShoppingPikaboo(),
    ),
    GetPage(
      title: 'Shopping Kableewala',
      name: Routes.SHOPPINGKABLEWALAWEBVIEW,
      binding: AuthBinding(),
      page: () => ShoppingKablewala(),
    ),
    GetPage(
      title: 'Shopping chaldal',
      name: Routes.SHOPPINGCHALDALWEBVIEW,
      binding: AuthBinding(),
      page: () => ShoppingChaldal(),
    ),
    GetPage(
      title: 'Shopping shwapno',
      name: Routes.SHOPPINGSWAPNOWEBVIEW,
      binding: AuthBinding(),
      page: () => ShoppingSwapno(),
    ),
    GetPage(
      title: 'Shopping Jadro',
      name: Routes.SHOPPINGJADROWEBVIEW,
      binding: AuthBinding(),
      page: () => ShoppingJadro(),
    ),
    GetPage(
      title: 'Shopping MeenaClick',
      name: Routes.SHOPPINGMEENACLICKWEBVIEW,
      binding: AuthBinding(),
      page: () => ShoppingMeenaClick(),
    ),
    GetPage(
      title: 'Games Flappy Bird',
      name: Routes.GAMESFLAPPYBIRDWEBVIEW,
      binding: AuthBinding(),
      page: () => GamesFlappyBirdWebview(),
    ),
    GetPage(
      title: 'Games Hit Master 3D',
      name: Routes.GAMESHITMASTER3DWEBVIEW,
      binding: AuthBinding(),
      page: () => GamesHitMaster3DWebview(),
    ),
    GetPage(
      title: 'Games Hit Can',
      name: Routes.GAMESHITCANWEBVIEW,
      binding: AuthBinding(),
      page: () => GamesHitCanWebview(),
    ),
    GetPage(
      title: 'Games Kranker',
      name: Routes.GAMESKRANKERWEBVIEW,
      binding: AuthBinding(),
      page: () => GamesKrunkerWebview(),
    ),
    GetPage(
      title: 'Food Pizza Hut',
      name: Routes.FOODPIZZAHUTWEBVIEW,
      binding: AuthBinding(),
      page: () => FoodPizzaHutWebview(),
    ),
    GetPage(
      title: 'Food Panda ',
      name: Routes.FOODPANDAWEBVIEW,
      binding: AuthBinding(),
      page: () => FoodPandaWebview(),
    ),
    GetPage(
      title: 'Food Hungry Naki ',
      name: Routes.FOODHUNGRYNAKIWEBVIEW,
      binding: AuthBinding(),
      page: () => HungryNakiWebview(),
    ),
    GetPage(
      title: 'Upohar Food Court',
      name: Routes.UPOHARFOODCOURTWEBVIEW,
      binding: AuthBinding(),
      page: () => UpoharBDFoodCourtWebview(),
    ),
    GetPage(
      title: 'Sheba Food Court',
      name: Routes.SHEBAFOODWEBVIEW,
      binding: AuthBinding(),
      page: () => ShebaFoodWebview(),
    ),
    GetPage(
      title: 'Donation Jaago',
      name: Routes.DONATIONJAAGOWEBVIEW,
      binding: AuthBinding(),
      page: () => DonationJaagoWebview(),
    ),
    GetPage(
      title: 'Donation Biyanondo',
      name: Routes.DONATIONBIDYANONDOWEBVIEW,
      binding: AuthBinding(),
      page: () => DonationBidyanondoWebview(),
    ),
    GetPage(
      title: 'Donation Alter Youth',
      name: Routes.DONATIONALTERYOUTHWEBVIEW,
      binding: AuthBinding(),
      page: () => DonationAlterYouthWebview(),
    ),
    GetPage(
      title: 'Donation As Sunnah Foundation',
      name: Routes.DONATIONASSUNNAHWEBVIEW,
      binding: AuthBinding(),
      page: () => DonationAsSunnahWebview(),
    ),
    GetPage(
      title: 'Donation BRAC',
      name: Routes.DONATIONBRACWEBVIEW,
      binding: AuthBinding(),
      page: () => DonationBracWebview(),
    ),
    GetPage(
      title: 'Donation Ek Takay Ahar',
      name: Routes.DONATIONEKTAKAYAHARWEBVIEW,
      binding: AuthBinding(),
      page: () => DonationEkTakayAharWebview(),
    ),
    GetPage(
      title: 'Donation Food For All',
      name: Routes.DONATIONFOODFORALLWEBVIEW,
      binding: AuthBinding(),
      page: () => DonationFoodForAllWebview(),
    ),
    GetPage(
      title: 'Donation Human Aid',
      name: Routes.DONATIONHUMANAIDWEBVIEW,
      binding: AuthBinding(),
      page: () => DonationHumanAidWebview(),
    ),
    GetPage(
      title: 'Donation Mastul Foundation',
      name: Routes.DONATIONMASTULWEBVIEW,
      binding: AuthBinding(),
      page: () => DonationMastulWebview(),
    ),
    GetPage(
      title: 'Donation Sajida Foundation',
      name: Routes.DONATIONSAJIDAWEBVIEW,
      binding: AuthBinding(),
      page: () => DonationSajidaWebview(),
    ),
    GetPage(
      title: 'Corona Surokkha',
      name: Routes.CORONASUROKKHAWEBVIEW,
      binding: AuthBinding(),
      page: () => CoronaSurokkhaWebview(),
    ),
    GetPage(
      title: 'Corona info',
      name: Routes.CORONAINFOWEBVIEW,
      binding: AuthBinding(),
      page: () => CoronaInfoWebview(),
    ),
    GetPage(
      title: 'Profile Edit',
      name: Routes.PROFILEEDIT,
      binding: ProfileBinding(),
      page: () => ProfileEdit(),
    ),
  ];
}
