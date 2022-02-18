// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../models/MyFiles.dart';

class FileInfoCard extends StatelessWidget {
  const FileInfoCard({Key? key, required this.index}) : super(key: key);

  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(defaultPadding * 0.75),
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: demoMyFiles[index].color.withOpacity(0.1),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: SvgPicture.asset(
                  demoMyFiles[index].svgSrc,
                  color: demoMyFiles[index].color,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Icon(Icons.more_vert, color: Colors.white54),
              )
            ],
          ),
          Text(
            demoMyFiles[index].title.toString(),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          InfoProgressBar(
            color: demoMyFiles[index].color,
            percentage: demoMyFiles[index].percentage,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${demoMyFiles[index].numOfFiles} files",
                style: Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(color: Colors.white70),
              ),
              Text(
                demoMyFiles[index].totalStorage,
                style: Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class InfoProgressBar extends StatelessWidget {
  const InfoProgressBar({
    Key? key,
    this.color = primaryColor,
    required this.percentage,
  }) : super(key: key);

  final Color color;
  final int percentage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 5,
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
        LayoutBuilder(
          builder: (context, constraints) => Container(
            width: constraints.maxWidth * (percentage / 100),
            height: 5,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
        ),
      ],
    );
  }
}
