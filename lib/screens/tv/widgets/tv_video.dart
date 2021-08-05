import 'package:cinema_flt/components/widgets/placeholder/tv_video_item_placeholder.dart';
import 'package:cinema_flt/models/tv/tv.dart';
import 'package:cinema_flt/screens/tv/widgets/tv_video_item.dart';
import 'package:cinema_flt/utils/AppUtils.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:snaplist/snaplist.dart';

class TvVideo extends StatelessWidget {
  final List<TV> movies;

  TvVideo(this.movies);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (cxt, sizingInformation) {
        switch (sizingInformation.deviceScreenType) {
          case DeviceScreenType.tablet:
            return buildBody(TABLET);
            break;
          case DeviceScreenType.desktop:
            return buildBody(DEKSTOP);
            break;
          default:
            final screenWidth = MediaQuery.of(context).size.width;
            return buildBody(screenWidth);
        }
      },
    );
  }

  Widget buildBody(double screenWidth) {
    final widthCard = screenWidth / 3;
    final heightCard = widthCard / 2;
    final Size cardSize = Size(widthCard, heightCard);
    return SizedBox(
      width: double.infinity,
      height: heightCard,
      child: SnapList(
        padding: EdgeInsets.symmetric(horizontal: 20),
        sizeProvider: (index, data) => cardSize,
        separatorProvider: (index, data) => Size(15.0, 15.0),
        builder: (context, index, data) {
          return movies == null
              ? TvVideoItemPlaceholder()
              : TvVideoItem(movies[index]);
        },
        count: movies == null ? 5 : movies.length,
      ),
    );
  }
}
