import 'package:countries_app_flutter/Widgets/Regions/regionAfrica.dart';
import 'package:countries_app_flutter/Widgets/Regions/regionOceania.dart';
import 'package:countries_app_flutter/Widgets/Regions/regionsamerica.dart';
import 'package:countries_app_flutter/Widgets/Regions/regionsasia.dart';
import 'package:countries_app_flutter/Widgets/Regions/regionseurope.dart';
import 'package:countries_app_flutter/Widgets/countriesList.dart';
import 'package:countries_app_flutter/model/country.dart';
import 'package:flutter/material.dart';

import 'Widgets/ListCountries.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Countries'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Regions',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // FlatButton(
                    //   child: Text('View more'),
                    //   onPressed: () {},
                    // ),
                  ],
                ),
              ),
            ),
            Container(
              height: 280,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  RegionAfica(),
                  RegionAsia(),
                  RegionAmericas(),
                  RegionEurope(),
                  RegionOceania(),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Africa',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    FlatButton(
                      child: Text(
                        'View more',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      onPressed: () =>
                          Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            ListCountries(regionName: "africa"),
                      )),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 900,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: africanCountriesList.length,
                itemBuilder: (context, i) => CountriesList(i),
                // children: <Widget>[
                //   CountriesList(),
                // ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
