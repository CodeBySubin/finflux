import 'package:finflux/core/constants/constants.dart';
import 'package:finflux/core/widgets/app_bar.dart';
import 'package:finflux/features/analytics/presentation/analytics.dart';
import 'package:finflux/features/home/presentation/bloc/home_bloc.dart';
import 'package:finflux/features/home/presentation/bloc/home_event.dart';
import 'package:finflux/features/home/presentation/bloc/home_state.dart';
import 'package:finflux/features/home/presentation/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Widget> widgets = [
    HomePage(),
    Center(child: Container(child: Text("map"))),
    Center(child: Container(child: Text("qr"))),
    Analytics(),
    Container(child: Text("home")),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder:
          (context, state) => Scaffold(
            appBar: customAppbar(context),
            body: widgets[state.index],
            bottomNavigationBar: BottomNavigationBar(
              elevation: 6,
              selectedItemColor: AppColor.colorprimary,
              currentIndex: state.index,
              type: BottomNavigationBarType.fixed,
              onTap:
                  (value) => context.read<HomeBloc>().add(ChangeIndex(value)),
              items: [
                BottomNavigationBarItem(
                  label: "",
                  icon: SvgPicture.asset(AppIcons.homeIcon),
                ),
                BottomNavigationBarItem(
                  label: "",
                  icon: SvgPicture.asset(AppIcons.locationIcon),
                ),
                BottomNavigationBarItem(
                  label: "",
                  icon: SvgPicture.asset(AppIcons.qrScannerIcon),
                ),
                BottomNavigationBarItem(
                  label: "",
                  icon: SvgPicture.asset(AppIcons.anlyticIcon),
                ),
                BottomNavigationBarItem(
                  label: "",
                  icon: SvgPicture.asset(AppIcons.profileIcon),
                ),
              ],
            ),
          ),
    );
  }
}
