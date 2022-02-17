import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class StorageInfoCard extends StatelessWidget {
  const StorageInfoCard({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.fileSize,
    required this.caption,
  }) : super(key: key);

  final String? title, svgSrc, fileSize;
  final int? caption;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultPadding / 2),
      padding: EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 2,
      ),
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: primaryColor.withOpacity(0.15)),
        borderRadius: const BorderRadius.all(Radius.circular(defaultPadding)),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 20,
            height: 20,
            child: SvgPicture.asset(svgSrc.toString()),
          ),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title.toString(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    caption.toString() + " files",
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(color: Colors.white70),
                  )
                ],
              ),
            ),
          ),
          Text(fileSize!),
        ],
      ),
    );
  }
}
