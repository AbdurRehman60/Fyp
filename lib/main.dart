import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fyp/routes/app-routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'PET APP',
          theme: ThemeData(
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.blue,
            ),
          ),
          // home: PetLostAddScreen()
          onGenerateRoute: MyRoute.onGeneratedRoute,
        );
      },
    );
    // home: const BottomNavScreen(),
  }
}
