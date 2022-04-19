part of 'app_page.dart';

abstract class Routes {
  static var Home;

  Routes._();

  static const HOME = _Paths.HOME;
}

abstract class _Paths {
  static const HOME = '/home';
}
