// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_website/constants.dart';

import 'components/chart.dart';
import 'components/header.dart';
import 'components/storage_details.dart';
import 'components/storage_info_card.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: defaultPadding, vertical: defaultPadding / 2),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: defaultPadding),
                child: Header(),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      height: 500,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(width: defaultPadding / 2),
                  Expanded(
                    flex: 2,
                    child: StorageDetails(),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
