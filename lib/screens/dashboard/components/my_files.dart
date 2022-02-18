// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:responsive_website/models/MyFiles.dart';
import 'package:responsive_website/responsive.dart';

import '../../../constants.dart';
import 'file_info_card.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "My Files",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                    vertical:
                        defaultPadding / (Responsive.isMobile(context) ? 2 : 1),
                    horizontal: defaultPadding * 0.5),
              ),
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text("Add new"),
            ),
          ],
        ),
        SizedBox(height: defaultPadding),
        Responsive(
          mobile: RecentFilesGridView(
            crossAxisCount: _size.width < 650 ? 2 : 4,
            childAspectRatio: _size.width < 650 ? 1.3 : 1,
          ),
          tablet: RecentFilesGridView(),
          desktop: RecentFilesGridView(
              childAspectRatio: _size.width < 1400 ? 1.4 : 1.1),
        ),
      ],
    );
  }
}

class RecentFilesGridView extends StatelessWidget {
  const RecentFilesGridView({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1.4,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoMyFiles.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding / 2,
        mainAxisSpacing: defaultPadding / 2,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) => FileInfoCard(index: index),
    );
  }
}
