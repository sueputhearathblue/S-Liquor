// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:seller/app/navigation_item.dart';

// class MainTapScreen extends StatefulWidget {
//   const MainTapScreen({super.key});

//   static String routeName = "homeScreen";

//   @override
//   State<MainTapScreen> createState() => _MainTapScreenState();
// }

// class _MainTapScreenState extends State<MainTapScreen> {
//   final List<NavigationItem> _navigationItems = [
//     NavigationItem(
//       icon: Icons.calendar_month_outlined,
//       label: 'Visit',
//       screen: BlocProvider(
//         create: (context) => TasksMainCubit(),
//         child: const TasksMainScreen(),
//       ),
//     ),
//     const NavigationItem(
//       icon: Icons.category_outlined,
//       label: 'stock',
//       screen: MainPageStockScreen(),
//     ),
//     const NavigationItem(
//       icon: Icons.receipt_long_outlined,
//       label: 'report',
//       screen: MainPageReportScreen(),
//     ),
//     const NavigationItem(
//       icon: Icons.notifications_active_outlined,
//       label: 'Reminders',
//       screen: NotificationScreen(),
//     ),
//     NavigationItem(
//       icon: Icons.grid_view_outlined,
//       label: 'more',
//       screen: BlocProvider(
//         create: (context) => MoreMainPageCubit(),
//         child: const MoreMainPage(),
//       ),
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ValueListenableBuilder<int>(
//         valueListenable: _selectedIndex,
//         builder: (context, index, _) {
//           return KeyedSubtree(
//             key: ValueKey(index),
//             child: _navigationItems[index].screen,
//           );
//         },
//       ),
//       bottomNavigationBar: ValueListenableBuilder<int>(
//         valueListenable: _selectedIndex,
//         builder: (context, index, _) {
//           return CustomBottomNavigationBar(
//             currentIndex: index,
//             onTap: (newIndex) => _selectedIndex.value = newIndex,
//             navigationItems: _navigationItems,
//           );
//         },
//       ),
//     );
//   }
// }
