import 'package:countries_app_flutter/model/country.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'ViewCountry.dart';

class CountriesList extends StatelessWidget {
  final int itemIndex;
  CountriesList(this.itemIndex);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(ViewCountry.routeName);
      },
      child: Column(
        children: <Widget>[
          Card(
            elevation: 5,
            child: Row(
              children: <Widget>[
                Container(
                  height: 150,
                  width: 180,
                  child: SvgPicture.network(
                    africanCountriesList[itemIndex].flags,
                    fit: BoxFit.fill,
                    semanticsLabel: 'A shark?!',
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(africanCountriesList[itemIndex].name,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 120,
                        child: Text(
                          africanCountriesList[itemIndex].capital,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
