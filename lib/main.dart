import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:user_app/core/routers/app_router.dart';
import 'package:user_app/core/theme/main_theme.dart';
import 'package:user_app/features/user_list/ui/users_screen/pages/users_screen.dart';
import 'package:user_app/injection.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
