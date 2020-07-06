import 'package:countries_app_flutter/model/CountryModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CountryDetails extends StatelessWidget {
  final CountryModel countryModel;

  const CountryDetails({@required this.countryModel});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(countryModel.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Card(
                  child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text("Name"),
                    subtitle: Text(countryModel.name),
                  ),
                  ListTile(
                    title: Text("Native Name"),
                    subtitle: Text(countryModel.nativeName),
                  ),
                  ListTile(
                    title: Text("Capital"),
                    subtitle: Text(countryModel.capital),
                  ),
                  ListTile(
                    title: Text("Region"),
                    subtitle: Text(countryModel.region),
                  ),
                  ListTile(
                    title: Text("Subregion"),
                    subtitle: Text(countryModel.subregion),
                  ),
                  ListTile(
                    title: Text("Population"),
                    subtitle: Text("${countryModel.population}"),
                  ),
                  ListTile(
                    title: Text("Demonym"),
                    subtitle: Text(countryModel.demonym),
                  ),
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
