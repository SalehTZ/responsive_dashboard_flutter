import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../models/RecentFile.dart';

class RecentFilesCard extends StatelessWidget {
  const RecentFilesCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent Files",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              columnSpacing: defaultPadding,
              horizontalMargin: 0,
              columns: [
                DataColumn(label: Text("File Name")),
                DataColumn(label: Text("Date")),
                DataColumn(label: Text("Size")),
              ],
              rows: List.generate(
                demoRecentFiles.length,
                (index) => recentFileDataRow(demoRecentFiles[index]),
              ),
            ),
          )
        ],
      ),
    );
  }
}

DataRow recentFileDataRow(RecentFile info) {
  return DataRow(
    onLongPress: () {},
    cells: [
      DataCell(
        Row(
          children: [
            SvgPicture.asset(
              info.icon.toString(),
              width: 30,
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding,
              ),
              child: Text(info.title.toString()),
            )
          ],
        ),
      ),
      DataCell(Text(info.date.toString())),
      DataCell(Text(info.size.toString())),
    ],
  );
}
