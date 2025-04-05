import 'package:bookly/features/home/presentation/views/book_details_view.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/search/presentation/views/search_view.dart';
import 'package:bookly/config/router/app_routes.dart';
import 'package:go_router/go_router.dart';

import '../../features/Splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  AppRouter._();

  static final router = GoRouter(
    initialLocation: AppRoutes.kSplashView,
    routes: [
      GoRoute(
        path: AppRoutes.kSplashView,
        name: AppRoutes.kSplashView,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: AppRoutes.kSearchView,
        name: AppRoutes.kSearchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: AppRoutes.kHomeView,
        name: AppRoutes.kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        name: AppRoutes.kBookDetailsView,
        path: AppRoutes.kBookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
