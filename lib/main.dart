import 'package:finflux/core/routes/routes.dart';
import 'package:finflux/features/authentication/presentation/bloc/bloc.dart';
import 'package:finflux/features/home/presentation/bloc/home_bloc.dart';
import 'package:finflux/injection/injection.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/constants/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
//https://www.figma.com/design/bWxHOsXJcMxkxWgGRbTsT7/FinFlux-Fintech-App--Community-?node-id=1-1861&t=kMJhPe60pJT3qyYd-0
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AuthBloc>(create: (_) => getIt<AuthBloc>()),
          BlocProvider<HomeBloc>(create: (BuildContext context) => HomeBloc()),
        ],
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: AppStrings.appTitle,
          theme: ThemeData(
            textTheme: GoogleFonts.montserratTextTheme(),
            colorScheme: ColorScheme.fromSeed(seedColor: AppColor.white),
          ),
          routerConfig: AppRouter.router,
        ),
      ),
    );
  }
}
