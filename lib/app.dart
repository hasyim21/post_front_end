import 'package:flutter/material.dart';

import 'core/routes/app_route.dart';
import 'core/theme/app_theme.dart';
// import 'data/services/shared_prefs_service.dart';
// import 'presentation/login/pages/login_page.dart';
// import 'presentation/main/pages/main_page.dart';

class App extends StatelessWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'POS',
      theme: AppTheme.getTheme(context),
      initialRoute: AppRoute.initialRoute,
      routes: AppRoute.routes,
    );
  }
}
