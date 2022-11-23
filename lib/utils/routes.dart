import 'package:flutter/material.dart';
import 'package:pmob_22/domain/questions.dart';
import 'package:pmob_22/ui/screens/authentication/forgotten_pass.dart';
import 'package:pmob_22/ui/screens/authentication/login_screen.dart';
import 'package:pmob_22/ui/screens/authentication/registe_screen.dart';
import 'package:pmob_22/ui/screens/home/home_screen.dart';
import 'package:pmob_22/ui/screens/subject/subject.dart';
import 'package:pmob_22/ui/screens/subject/math_matters.dart';
import 'package:pmob_22/ui/screens/question/question_screen.dart';

Map<String, WidgetBuilder> routes() {
  final Map< String,WidgetBuilder> routes = <String, WidgetBuilder>{};

  routes["/login"] = (context) => const LoginScreen();
  routes["/register"] = (context) => const RegisterScreen();
  routes["/fPass"] = (context) => const ForgottenPassword();
  routes["/home"] = (context) => const HomeScreen();
  routes["/mathM"] = (context) => const MathMatters();
  routes["/subScreen"] = (context) => const SubjectsScreen();
  //routes["/question"] = (context) => const QuestinScreen();

  return routes;
}
