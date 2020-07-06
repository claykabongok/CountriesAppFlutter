import 'file:///D:/Project_2019/Local-Github/countries_app_flutter/lib/Widgets/ListCountries.dart';
import 'package:countries_app_flutter/Widgets/ViewListCountries.dart';
import 'package:flutter/material.dart';

import '../ViewCountry.dart';

class RegionAfica extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      width: 160,
      child: GestureDetector(
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ListCountries(regionName: "africa"),
        )),
        // onTap: () {
        //   /**
        //    *
        //    *   onTap: () => Navigator.of(context).push(MaterialPageRoute(
        //                 builder: (context) => CountryDetails(
        //                   countryModel: countryModel,
        //                 ),
        //               )),

        //    * builder: (context) => CountryDetails(
        //                 //   countryModel: countryModel,
        //                 // ),

        //    */
        //   Navigator.of(context).pushNamed(ListCountries.routeName);
        // },
        child: Column(
          children: <Widget>[
            Card(
              elevation: 10,
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage('assets/africa.png')),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Africa',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
