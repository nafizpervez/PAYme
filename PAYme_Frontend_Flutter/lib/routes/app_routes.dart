// ignore_for_file: constant_identifier_names

part of './app_pages.dart';

abstract class Routes {
  static const LOGIN = '/login';
  static const REGISTER = '/register';
  static const INITIAL = '/login/home';
  static const PROFILE = '/login/profile';
  static const PROFILEEDIT = '/login/profile/edit';
  static const MORE = '/login/more';
  static const INBOX = '/login/inbox';

  static const PINCONFIRMATION = '/pay_bill/pin';
  static const BILLCONFIRMATION = '/pay_bill/pin/bill_confirmation';

  static const PAYELECTRICBILL = '/electricity_bill';
  static const PAYGASBILL = '/gas_bill';
  static const PAYWATERBILL = '/water_bill';
  static const PAYINTERNETBILL = '/internet_bill';
  static const PAYTVBILL = '/tv_bill';
  static const PAYEDUCATIONBILL = '/education_bill';

  static const PAYEDUCATIONBILLPERIOD = '/education/bill_period';

  static const PAYTVBILLPERIOD = '/TV/bill_period';
  static const PAYINTERNETBILLPERIOD = '/internet/bill_period';

  static const PAYWATERBILLPERIOD = '/water/bill_period';

  static const PAYGASBILLPERIOD = '/gas/bill_period';

  static const PAYPREPAIDNESCO = '/electric/nesco_prepaid';
  static const PAYPOSTPAIDNESCO = '/electric/nesco_postpaid';
  static const PAYPREPAIDDESCO = '/electric/desco_prepaid';
  static const PAYPOSTPAIDDESCO = '/electric/desco_postpaid';
  static const PAYPREPAIDDPDC = '/electric/dpdc_prepaid';
  static const PAYPOSTPAIDDPDC = '/electric/dpdc_postpaid';
  static const PAYPREPAIDBPDB = '/electric/bpdb_prepaid';
  static const PAYPOSTPAIDBPDB = '/electric/bpdb_postpaid';
  static const PAYPREPAIDWESTZONE = '/electric/westzone_prepaid';
  static const PAYPOSTPAIDWESTZONE = '/electric/westzone_postpaid';

  static const EDUCATIONSAVEDBILLS = '/education/saved_bills';
  static const EDUCATIONADDBILLS = '/education/add_bills';
  static const ELECTRICSAVEDBILLS = '/electric/saved_bills';
  static const ELECTRICADDBILLS = '/electric/add_bills';
  static const GASSAVEDBILLS = '/gas/saved_bills';
  static const GASADDBILLS = '/gas/add_bills';
  static const INTERNETSAVEDBILLS = '/internet/saved_bills';
  static const INTERNETADDBILLS = '/internet/add_bills';
  static const TVSAVEDBILLS = '/tv/saved_bills';
  static const TVADDBILLS = '/tv/add_bills';
  static const WATERSAVEDBILLS = '/water/saved_bills';
  static const WATERADDBILLS = '/water/add_bills';

  static const MORETICKETINDEX = '/more/ticket';
  static const MORETRAVELINDEX = '/more/travel';
  static const MOREINSURANCEINDEX = '/more/insurance';
  static const MOREGAMESINDEX = '/more/games';
  static const MORESHOPPINGINDEX = '/more/shopping';
  static const MOREDONATIONINDEX = '/more/donation';
  static const MOREFOODINDEX = '/more/food';
  static const MORECORONAINDEX = '/more/corona';

  static const MOREAIRTICKET = '/more/ticket/air';
  static const AIRTICKETBDTICKETSWEBVIEW = '/more/ticket/air/bdtickets';
  static const AIRTICKETFLIGHTEXPERTWEBVIEW = '/more/ticket/air/flightexpert';
  static const AIRTICKETGOZAYAANWEBVIEW = '/more/ticket/air/go_zayaan';
  static const AIRTICKETKAYAKWEBVIEW = '/more/ticket/air/kayak';
  static const AIRTICKETSHARETRIPWEBVIEW = '/more/ticket/air/share_trip';
  static const AIRTICKETBUYAIRTICKETWEBVIEW = '/more/ticket/air/buy_air_ticket';
  static const AIRTICKETBIMANBDWEBVIEW = '/more/ticket/air/biman_bd';
  static const AIRTICKETNOVOAIRWEBVIEW = '/more/ticket/air/novoair';
  static const AIRTICKETAMYWEBVIEW = '/more/ticket/air/amy';

  static const MOREBUSTICKET = '/more/ticket/bus';
  static const BUSTICKETBDTICKETWEBVIEW = '/more/ticket/bus/bdtickets';
  static const BUSTICKETBUSBDWEBVIEW = '/more/ticket/bus/busbd';
  static const BUSTICKETPARIBAHANWEBVIEW = '/more/ticket/bus/paribahan';
  static const BUSTICKETSHOHOZWEBVIEW = '/more/ticket/bus/shohoz';
  static const BUSTICKETGOZAYAANWEBVIEW = '/more/ticket/bus/go_zayaan';
  static const BUSTICKETNABILWEBVIEW = '/more/ticket/bus/nabil_paribahan';
  static const BUSTICKETGREENLINEWEBVIEW = '/more/ticket/bus/green_line';
  static const BUSTICKETSHYAMOLIWEBVIEW = '/more/ticket/bus/shyamoli_paribahan';
  static const BUSTICKETSHOHAGHWEBVIEW = '/more/ticket/bus/shohagh_paribahan';
  static const BUSTICKETNATIONALWEBVIEW = '/more/ticket/bus/national_paribahan';

  static const MORELAUNCHTICKET = '/more/ticket/launch';
  static const LAUNCHTICKETBDTICKETWEBVIEW = '/more/ticket/launch/bdtickets';
  static const LAUNCHTICKETSHOHOZWEBVIEW = '/more/ticket/launch/shohoz';
  static const LAUNCHTICKETHUNTBDWEBVIEW = '/more/ticket/launch/hunt_bd';
  static const LAUNCHTICKETSEATBOOKINGWEBVIEW =
      '/more/ticket/launch/seat_booking';

  static const MORETRAINTICKET = '/more/ticket/train';
  static const TRAINTICKETBDRAILWAYWEBVIEW = '/more/ticket/train/bd_railway';

  static const TRAVELGOZAYAANHOTELBOOKINGWEBVIEW = '/more/travel/gozayaan';
  static const TRAVELAMYHOTELBOOKINGWEBVIEW = '/more/travel/amy';
  static const TRAVELBOOKINGHOTELBOOKINGWEBVIEW =
      '/more/travel/booking_dot_com';
  static const TRAVELKAYAKHOTELBOOKINGWEBVIEW = '/more/travel/kayak';
  static const TRAVELAGODAHOTELBOOKINGWEBVIEW = '/more/travel/agoda';
  static const TRAVELBDBOOKINGHOTELBOOKINGWEBVIEW = '/more/travel/bd_booking';
  static const TRAVELHOTELSDOTCOMHOTELBOOKINGWEBVIEW =
      '/more/travel/hotels_dot_com';
  static const TRAVELTRIVAGOHOTELBOOKINGWEBVIEW = '/more/travel/trivago';
  static const TRAVELWINROOMSHOTELBOOKINGWEBVIEW = '/more/travel/win_rooms';
  static const TRAVELMAKEMYTRIPHOTELBOOKINGWEBVIEW =
      '/more/travel/make_my_trip';

  static const INSURANCEGUARDIANLIFEWEBVIEW = '/more/insurance/guardian_life';
  static const INSURANCEMILVIKBDWEBVIEW = '/more/insurance/milvikbd';

  static const SHOPPINGAJKERDEALWEBVIEW = '/more/shopping/ajkerdeal';
  static const SHOPPINGSHAJGOJWEBVIEW = '/more/shopping/shajgoj';
  static const SHOPPINGBDSHOPWEBVIEW = '/more/shopping/bd_shop';
  static const SHOPPINGOTHOBAWEBVIEW = '/more/shopping/othoba';
  static const SHOPPINGPRIYOSHOPWEBVIEW = '/more/shopping/priyo_shop';
  static const SHOPPINGPIKABOOWEBVIEW = '/more/shopping/pikaboo';
  static const SHOPPINGKABLEWALAWEBVIEW = '/more/shopping/kable_wala';
  static const SHOPPINGCHALDALWEBVIEW = '/more/shopping/chaldal';
  static const SHOPPINGSWAPNOWEBVIEW = '/more/shopping/swapno';
  static const SHOPPINGJADROWEBVIEW = '/more/shopping/jadro';
  static const SHOPPINGMEENACLICKWEBVIEW = '/more/shopping/meena_click';

  static const GAMESFLAPPYBIRDWEBVIEW = '/more/games/flappy_bird';
  static const GAMESHITMASTER3DWEBVIEW = '/more/games/hit_master_3d';
  static const GAMESHITCANWEBVIEW = '/more/games/hit_can';
  static const GAMESKRANKERWEBVIEW = '/more/games/kranker';

  static const FOODPIZZAHUTWEBVIEW = '/more/food/pizzahut';
  static const FOODPANDAWEBVIEW = '/more/food/food_panda';
  static const FOODHUNGRYNAKIWEBVIEW = '/more/food/hungry_naki';
  static const UPOHARFOODCOURTWEBVIEW = '/more/food/upohar_food_court';
  static const SHEBAFOODWEBVIEW = '/more/food/sheba_food';

  static const DONATIONJAAGOWEBVIEW = '/more/donation/jaago_foundation';
  static const DONATIONBIDYANONDOWEBVIEW = '/more/donation/bidyanondo';
  static const DONATIONALTERYOUTHWEBVIEW = '/more/donation/alter_youth';
  static const DONATIONASSUNNAHWEBVIEW = '/more/donation/as_sunnah_foundation';
  static const DONATIONBRACWEBVIEW = '/more/donation/brac';
  static const DONATIONEKTAKAYAHARWEBVIEW = '/more/donation/ek_takay_ahar';
  static const DONATIONFOODFORALLWEBVIEW = '/more/donation/food_for_all';
  static const DONATIONHUMANAIDWEBVIEW = '/more/donation/human_aid_bd';
  static const DONATIONMASTULWEBVIEW = '/more/donation/mastul_foundation';
  static const DONATIONSAJIDAWEBVIEW = '/more/donation/sajida_foundation';

  static const CORONASUROKKHAWEBVIEW = '/more/corona/surokkha';
  static const CORONAINFOWEBVIEW = '/more/corona/corona_info';

  static const BDJOBSWEBVIEW = '/suggestion_button/bdjobs';
  static const BDNEWSWEBVIEW = '/suggestion_button/bdnews';
  static const BIKROYWEBVIEW = '/suggestion_button/bikroy';
  static const DARAZWEBVIEW = '/suggestion_button/daraz';
  static const EDUHIVEWEBVIEW = '/suggestion_button/eduhive';
}
