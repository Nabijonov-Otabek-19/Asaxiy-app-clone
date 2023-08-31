import 'package:asaxiy_clone/data/model/menu_model.dart';
import 'package:flutter/cupertino.dart';

import '../presentation/screens/screens.dart';
import '../theme/colors.dart';

const String CATEGORIES = "categories";
const String OFFERS = "offers";
const String PRODUCTLIST = "productList";

const DBNAME = "products";

const pages = <Widget>[
  HomeScreen(),
  MenuScreen(),
  CartScreen(),
  OrderScreen(),
  ProfileScreen(),
];

var categoriesList = <String>[
  "Kitoblar",
  "Telefon va gadjetlar",
  "Maishiy texnika",
  "Iqlim texnikasi",
  "Kompyuter texnikasi",
  "Sport va dam olish",
  "Uy va ofis uchun tovarlar",
  "Televizor, video va audio",
  "Geymerlar uchun tovarlar",
  "Mebel",
  "Idish-tovoqlar",
  "Go'zallik va salomatlik",
  "Bolalar uchun tovarlar",
  "Kiyim, poyabzal va aksessuarlar",
  "O'yinchoqlar, sovg'alar va aksessuarlar",
  "Avto mollari"
];

var categories = [
  MenuModel(1, "assets/images/ic_category.png", light_blue, colorPrimary,
      "Bo'limlar"),
  MenuModel(
      2, "assets/images/ic_calendar.png", light_red, red, "Muddatli to'lov"),
  MenuModel(
      3, "assets/images/ic_discount.png", light_pink, pink, "Chegirmalar"),
  MenuModel(
      4, "assets/images/ic_lighting.png", light_orange, orange, "Yangilar"),
  MenuModel(5, "assets/images/ic_book.png", white, 0, "Kitoblar"),
  MenuModel(
      6, "assets/images/ic_phone.png", white, 0, "Telefonlar va gadjetlar"),
  MenuModel(
      7, "assets/images/ic_wash_machine.png", white, 0, "Maishiy texnika"),
  MenuModel(8, "assets/images/ic_conditioner.png", white, 0, "Iqlim texnikasi")
];

var categoryBolimlar = [
  MenuModel(1, "assets/images/ic_book.png", white, 0, "Kitoblar"),
  MenuModel(
      2, "assets/images/ic_phone.png", white, 0, "Telefonlar va gadjetlar"),
  MenuModel(
      3, "assets/images/ic_wash_machine.png", white, 0, "Maishiy texnika"),
  MenuModel(4, "assets/images/ic_conditioner.png", white, 0, "Iqlim texnikasi"),
  MenuModel(
      5, "assets/images/ic_computer.png", white, 0, "Kompyuter texnikasi"),
  MenuModel(6, "assets/images/ic_sport.png", white, 0, "Sport va dam olish"),
  MenuModel(
      7, "assets/images/ic_ladder.png", white, 0, "Uy va ofis uchun tovarlar"),
  MenuModel(
      8, "assets/images/ic_tv.png", white, 0, "Televizor, video va audio"),
  MenuModel(
      9, "assets/images/ic_joystick.png", white, 0, "Geymerlar uchun tovarlar"),
  MenuModel(10, "assets/images/ic_sofa.png", white, 0, "Mebel"),
  MenuModel(11, "assets/images/ic_pan.png", white, 0, "Idish-tovoqlar"),
  MenuModel(
      12, "assets/images/ic_parfume.png", white, 0, "Go'zallik va salomatlik"),
  MenuModel(
      13, "assets/images/ic_bear.png", white, 0, "Bolalar uchun tovarlar"),
  MenuModel(14, "assets/images/ic_tshirt.png", white, 0,
      "Kiyim, poyabzal va aksessuarlar"),
  MenuModel(15, "assets/images/ic_gift.png", white, 0,
      "O'yinchoqlar, sovg'alar va aksessuarlar"),
  MenuModel(16, "assets/images/ic_wheel.png", white, 0, "Avto mollari")
];
