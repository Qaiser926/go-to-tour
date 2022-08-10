import 'package:get/get.dart';

import 'package:go_tour/app/middleware/auth_middleware.dart';
import 'package:go_tour/app/middleware/splash_middleware.dart';
import 'package:go_tour/app/modules/Checkout/bindings/checkout_binding.dart';
import 'package:go_tour/app/modules/Checkout/views/checkout_view.dart';
import 'package:go_tour/app/modules/HotelDetails/bindings/hotel_details_binding.dart';
import 'package:go_tour/app/modules/HotelDetails/views/hotel_details_view.dart';
import 'package:go_tour/app/modules/MyTripComplete/bindings/my_trip_complete_binding.dart';
import 'package:go_tour/app/modules/MyTripComplete/views/my_trip_complete_view.dart';
import 'package:go_tour/app/modules/ProcessToPay/bindings/process_to_pay_binding.dart';
import 'package:go_tour/app/modules/ProcessToPay/views/process_to_pay_view.dart';
import 'package:go_tour/app/modules/SearchResult/bindings/search_result_binding.dart';
import 'package:go_tour/app/modules/SearchResult/views/search_result_view.dart';
import 'package:go_tour/app/modules/SelectSeat/bindings/select_seat_binding.dart';
import 'package:go_tour/app/modules/SelectSeat/views/select_seat_view.dart';
import 'package:go_tour/app/modules/auth/login/bindings/login_binding.dart';
import 'package:go_tour/app/modules/auth/login/views/login_view.dart';
import 'package:go_tour/app/modules/auth/register/bindings/register_binding.dart';
import 'package:go_tour/app/modules/auth/register/views/register_view.dart';
import 'package:go_tour/app/modules/flight/bindings/flight_binding.dart';
import 'package:go_tour/app/modules/flight/views/flight_view.dart';
import 'package:go_tour/app/modules/home/bindings/home_binding.dart';
import 'package:go_tour/app/modules/home/modelClass/homeOfferListModelClass.dart';
import 'package:go_tour/app/modules/home/navBarBottomViews/profile_view.dart';
import 'package:go_tour/app/modules/home/views/home_view.dart';
import 'package:go_tour/app/modules/hotelList/bindings/hotel_list_binding.dart';
import 'package:go_tour/app/modules/hotelList/views/hotel_list_view.dart';
import 'package:go_tour/app/modules/map/bindings/map_binding.dart';
import 'package:go_tour/app/modules/map/views/map_view.dart';
import 'package:go_tour/app/modules/offers/bindings/offers_binding.dart';
import 'package:go_tour/app/modules/offers/views/offers_view.dart';
import 'package:go_tour/app/modules/review/bindings/review_binding.dart';
import 'package:go_tour/app/modules/review/views/review_view.dart';
import 'package:go_tour/app/modules/search/views/search_flight_view.dart';
import 'package:go_tour/app/modules/search/views/search_view.dart';
import 'package:go_tour/app/modules/splash/bindings/splash_binding.dart';
import 'package:go_tour/app/modules/splash/views/splash_view.dart';
import 'package:go_tour/app/modules/ticketDetails/bindings/ticket_details_binding.dart';
import 'package:go_tour/app/modules/ticketDetails/views/ticket_details_view.dart';
import 'package:go_tour/app/modules/wallet/bindings/wallet_binding.dart';
import 'package:go_tour/app/modules/wallet/views/add_card_view.dart';
import 'package:go_tour/app/modules/wallet/views/wallet_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
      // middlewares: [SplashMiddleware(), AuthMiddleware()],
      
      middlewares: [SplashMiddleware()],
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH_HOTELS,
      page: () => SearchView(),
    ),
    GetPage(
      name: _Paths.SEARCH_FLIGHTS,
      page: () => SearchFlightView(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
    ),
    GetPage(
      name: _Paths.WALLET,
      page: () => WalletView(),
      binding: WalletBinding(),
    ),
    GetPage(
      name: _Paths.ADD_CARD,
      page: () => AddCardView(),
    ),
    GetPage(
      name: _Paths.MAP,
      page: () => MapView(),
      binding: MapBinding(),
    ),
    GetPage(
      name: _Paths.REVIEW,
      page: () => ReviewView(),
      binding: ReviewBinding(),
    ),
    GetPage(
      name: _Paths.MY_TRIP_COMPLETE,
      page: () => MyTripCompleteView(),
      binding: MyTripCompleteBinding(),
    ),
    GetPage(
      name: _Paths.Hotel_Details,
      page: () => HotelDetailsView(),
      binding: HotelDetailsBinding(),
    ),
    GetPage(
      name: _Paths.FLIGHT,
      page: () => FlightView(),
      binding: FlightBinding(),
    ),
    GetPage(
      name: _Paths.TICKET_DETAILS,
      page: () => TicketDetailsView(),
      binding: TicketDetailsBinding(),
    ),
    GetPage(
      name: _Paths.CHECKOUT,
      page: () => CheckoutView(),
      binding: CheckoutBinding(),
    ),
    GetPage(
      name: _Paths.SELECT_SEAT,
      page: () => SelectSeatView(),
      binding: SelectSeatBinding(),
    ),
    GetPage(
      name: _Paths.PROCESS_TO_PAY,
      page: () => ProcessToPayView(),
      binding: ProcessToPayBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH_RESULT,
      page: () => SearchResultView(),
      binding: SearchResultBinding(),
    ),
    GetPage(
      name: _Paths.HOTEL_LIST,
      page: () {
      return  HotelListView();
      //   HomeOfferListModelClass dataPass=Get.arguments;
      //   return dataPass;
      },
      binding: HotelListBinding(),

    ),
    GetPage(
      name: _Paths.OFFERS,
      page: () => OffersView(),
      binding: OffersBinding(),
    ),
  ];
}
