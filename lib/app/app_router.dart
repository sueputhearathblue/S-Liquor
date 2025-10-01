// import 'package:flutter/material.dart';

// Route<dynamic>? appRouter(RouteSettings settings) {
//   // if (auth == null) {
//   //   if (settings.name == ScannerScreen.routeName) {
//   //     return MaterialPageRoute(builder: (_) => const ScannerScreen());
//   //   } else if (settings.name != LoginScreen.routeName) {
//   //     return MaterialPageRoute(builder: (_) => const StarterScreen());
//   //   }
//   // }

//   final authRoutes = authOnGenerateRoute(settings);
//   if (authRoutes != null) return authRoutes;

//   final moreRoutes = moreOnGenerateRoute(settings);
//   if (moreRoutes != null) return moreRoutes;

//   final reportRoutes = reportOnGenerateRoute(settings);
//   if (reportRoutes != null) return reportRoutes;

//   final taskRoute = tasksOnGenerateRoute(settings);
//   if (taskRoute != null) return taskRoute;

//   final stockRoutes = stockOnGenerateRoute(settings);
//   if (stockRoutes != null) return stockRoutes;

//   if (auth != null && settings.name == "/") {
//     if (initSync.isSyncSetting == false) {
//       return MaterialPageRoute(builder: (_) => const SplashScreen());
//     }

//     return MaterialPageRoute(builder: (_) => MainTapScreen());
//   }

//   return MaterialPageRoute(
//     builder: (_) => Scaffold(
//       body: Center(child: Text('No route defined for ${settings.name}')),
//     ),
//   );
// }
