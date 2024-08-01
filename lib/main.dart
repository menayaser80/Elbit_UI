import 'package:elbit_ui/Bloc/cubit.dart';
import 'package:elbit_ui/Bloc/states.dart';
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:elbit_ui/routes/app_routes.dart';
import 'package:elbit_ui/theme/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';


var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (BuildContext context)=>ElbitCubit() ),
          ],
          child: BlocConsumer<ElbitCubit,ElbitStates>(
    listener: (context, state) {},
    builder: (context, state) {
      return GetMaterialApp(
        theme: theme,
        title: 'elbit',
        debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.splashScreen,
        routes: AppRoutes.routes,
      );
    },
          ),
        );
      },
    );
  }
}
