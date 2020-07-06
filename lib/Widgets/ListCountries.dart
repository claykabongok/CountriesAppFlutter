import 'package:countries_app_flutter/CountryDetails.dart';
import 'package:countries_app_flutter/Widgets/ViewCountry.dart';
import '../network/http_service.dart';
import 'package:countries_app_flutter/model/CountryModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ListCountries extends StatelessWidget {

  final String regionName;
  final CountryHttpService httpService = CountryHttpService();
  static const routeName = '/counntries';

  ListCountries({@required this.regionName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Region: ' + regionName),
      ),
      body: Container(
        child: FutureBuilder(
          future: httpService.getCountries(regionName),
          builder: (BuildContext context,
              AsyncSnapshot<List<CountryModel>> snapshot) {
            if (snapshot.hasData) {
              List<CountryModel> countries = snapshot.data;
              return ListView(
                children: countries
                    .map(
                      (CountryModel countryModel) => Card(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            ListTile(
                              leading: Icon(Icons.image),
                              title: Text(countryModel.name),
                              subtitle: Text(countryModel.capital),
                              onTap: () =>
                                  Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => CountryDetails(
                                  countryModel: countryModel,
                                ),
                              )),
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              );
            }
            return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
