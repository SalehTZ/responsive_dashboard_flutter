import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'chart.dart';
import 'storage_info_card.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: defaultPadding, horizontal: defaultPadding / 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Storage detail",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: defaultPadding),
            ChartWidget(),
            SizedBox(height: defaultPadding),
            StorageInfoCard(
              svgSrc: "assets/icons/Documents.svg",
              caption: 1376,
              fileSize: "1.3GB",
              title: "Document files",
            ),
            StorageInfoCard(
              svgSrc: "assets/icons/media.svg",
              caption: 1328,
              fileSize: "15.33GB",
              title: "Media files",
            ),
            StorageInfoCard(
              svgSrc: "assets/icons/folder.svg",
              caption: 1328,
              fileSize: "15.33GB",
              title: "Other files",
            ),
            StorageInfoCard(
              svgSrc: "assets/icons/unknown.svg",
              caption: 140,
              fileSize: "1.33GB",
              title: "Unknown",
            ),
          ],
        ),
      ),
    );
  }
}
