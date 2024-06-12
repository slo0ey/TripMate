import 'package:flutter/material.dart';
import 'package:tripmate/models/Travel.dart';
import 'package:tripmate/utils/ViewMode.dart';
import 'package:tripmate/widgets/TravelListItem.dart';

Widget TravelListView(BuildContext context, String prefix,
    List<CompactTravel> travelList, ViewMode viewMode) {
  return Container(
      margin: const EdgeInsets.only(top: 32.0),
      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          RichText(
              text: TextSpan(
                  text: '$prefix ',
                  style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'SCoreDream',
                      color: Theme.of(context).colorScheme.onSurface),
                  children: <TextSpan>[
                TextSpan(
                    text: '${travelList.length}',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'SCoreDream',
                        color: travelList.isNotEmpty
                            ? const Color(0xFF5BAFE7)
                            : const Color(0xFFC4C4C4)))
              ])),
          (() {
            if (viewMode == ViewMode.grid) {
              return GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 8.0,
                    crossAxisSpacing: 8.0,
                  ),
                  itemCount: travelList.length,
                  itemBuilder: (context, index) => TravelListItem(
                      travel: travelList[index], viewMode: viewMode),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics());
            } else {
              return ListView.separated(
                  separatorBuilder: (_, __) => const SizedBox(height: 8.0),
                  itemCount: travelList.length,
                  itemBuilder: (context, index) => TravelListItem(
                      travel: travelList[index], viewMode: viewMode),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics());
            }
          })()
        ],
      ));
}
