import 'dart:ui';

import 'package:country_flags/country_flags.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:intl/intl.dart';

import 'package:tripmate/models/Travel.dart';
import 'package:tripmate/utils/ViewMode.dart';

class TravelListItem extends StatelessWidget {
  const TravelListItem(
      {super.key, required this.travel, required this.viewMode});

  static final DateFormat _dateFormat = DateFormat("yyyy. MM. dd");
  static final NumberFormat _numberFormat =
      NumberFormat.currency(locale: 'ko_KR', symbol: '₩');
  final CompactTravel travel;
  final ViewMode viewMode;

  @override
  Widget build(BuildContext context) {
    var startDay = _dateFormat.format(travel.startDay);
    var endDay = _dateFormat.format(travel.endDay);

    if (viewMode == ViewMode.big) {
      var boxSize = MediaQuery.of(context).size.width * 0.8;

      return Container(
        width: boxSize,
        height: boxSize,
        margin: const EdgeInsets.only(top: 32.0),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset('assets/images/countries/${travel.countryCode}.png',
                fit: BoxFit.fitHeight),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  travel.title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 32.0,
                      letterSpacing: -2.0),
                ),
                CountryFlag.fromCountryCode(travel.countryCode,
                    width: 62, height: 82, borderRadius: 8.0),
                Text(
                  '$startDay ~ $endDay',
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 12.0),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 4.0, horizontal: 8.0),
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(0, 0, 0, 0.2),
                      border: Border.all(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(100)),
                  child: Text(_numberFormat.format(travel.budget),
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.0,
                          letterSpacing: -0.5)),
                )
              ],
            )
          ],
        ),
      );
    } else if (viewMode == ViewMode.grid) {
      return Container();
    } else if (viewMode == ViewMode.medium) {
      var boxSize = MediaQuery.of(context).size.width * 0.8;

      return Container(
        width: boxSize,
        height: boxSize / 2,
        margin: const EdgeInsets.only(top: 32.0),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset('assets/images/countries/${travel.countryCode}.png',
                fit: BoxFit.none),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  travel.title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 24.0,
                      letterSpacing: -2.0),
                ),
                CountryFlag.fromCountryCode(travel.countryCode,
                    width: 62, height: 82, borderRadius: 8.0),
                Text(
                  '$startDay ~ $endDay',
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 12.0),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 4.0, horizontal: 8.0),
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(0, 0, 0, 0.2),
                      border: Border.all(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(100)),
                  child: Text(_numberFormat.format(travel.budget),
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.0,
                          letterSpacing: -0.5)),
                )
              ],
            )
          ],
        ),
      );
    } else {
      return Container();
    }
  }
}
