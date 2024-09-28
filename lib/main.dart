import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:foods/Food%20pages/Splash.dart';
import 'package:foods/Food%20pages/buttom.dart';
import 'package:foods/Food%20pages/cart.dart';
import 'package:foods/Food%20pages/feature_detai;s.dart';
import 'package:foods/Food%20pages/orders.dart';
import 'package:foods/signup_log_page/phone_page.dart';
import 'package:foods/State_class/binding_class.dart';
import 'package:foods/firebase_options.dart';
import 'package:foods/signup_log_page/Otp.dart';
import 'package:foods/signup_log_page/Register_page.dart';
import 'package:foods/signup_log_page/login.dart';
import 'package:get/get.dart';

import 'Food pages/rating_page.dart';
import 'signup_log_page/landing.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override

  Widget build(BuildContext context) {
    return SafeArea(
      child: GetMaterialApp(
        initialRoute: '/splash',
        getPages: [
          GetPage(name: '/splash', page:()=>Splash()),
          GetPage(name: '/signup', page: () => signup(), binding: BindingClass(),),
          GetPage(name: '/otp', page: () => Otp()),
          GetPage(name: '/register', page: () => register()),
          GetPage(name: '/login', page: () => login()),
          GetPage(name: '/phone', page: () => phone()),
          GetPage(name: '/buttom', page: () => buttom(), binding: BindingClass(),),
          GetPage(name: '/detail_food', page: () => DetailFood(addModel: Get.arguments, hotelclass: Get.arguments,), binding: BindingClass(),),
          GetPage(name: '/cart', page: ()=>cart()),
          GetPage(name: '/rating', page: ()=>rating()),
          GetPage(name: '/order', page: ()=>orders())
        ],
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
      ),
    );
  }
}
