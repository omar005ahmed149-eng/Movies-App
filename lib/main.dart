import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies/config/theme_manger.dart';
import 'package:movies/core/route_manger.dart';

void main() {
  runApp(MoviesApp());
}

class MoviesApp extends StatelessWidget {
  const MoviesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: Size(430, 932),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: RoutesManger.mainlayout,
          onGenerateRoute: RoutesManger.generateRoutes,
          darkTheme: ThemeManger().darkTheme,
          themeMode: ThemeMode.dark,
        );
      },
    );
  }
}
