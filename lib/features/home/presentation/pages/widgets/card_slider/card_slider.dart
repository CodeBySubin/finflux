import 'package:finflux/core/constants/constants.dart';
import 'package:finflux/features/home/presentation/bloc/home_bloc.dart';
import 'package:finflux/features/home/presentation/bloc/home_event.dart';
import 'package:finflux/features/home/presentation/bloc/home_state.dart';
import 'package:finflux/features/home/presentation/pages/widgets/card_slider/card_slider_item.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/widgets/widgets.dart';

class CardSlider extends StatelessWidget {
  final List<String> cardImage;
  const CardSlider({super.key, required this.cardImage});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder:
          (context, state) => Column(
            children: [
              CarouselSlider(
                items: cardImage.map((e)=>CardSliderItem(image: e,)).toList(),
                options: CarouselOptions(
                  initialPage: state.sliderIndex,
                  onPageChanged: (index, reason) {
                    context.read<HomeBloc>().add(ChangeSlideIndex(index));
                  },
                  viewportFraction: 0.94,
                  enableInfiniteScroll: false,
                  autoPlay: false,
                ),
              ),
              Indicator(
                currentIndex: state.sliderIndex,
                pageLength: 2,
                activeColor: AppColor.colorprimary,
                color: AppColor.textgrey,
                spacing: EdgeInsets.only(top: 8.h, left: 2.w, right: 2.w),
                activeSize: Size(15.0, 5.0),
                size: Size(5.0, 5.0),
              ),
            ],
          ),
    );
  }
}
