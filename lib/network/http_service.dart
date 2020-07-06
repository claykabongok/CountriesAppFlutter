import 'dart:convert';

import 'package:countries_app_flutter/model/CountryModel.dart';

import 'package:http/http.dart';

class CountryHttpService {
  final String countryApi = "https://restcountries.eu/rest/v2/";
  Future<List<CountryModel>> getCountries(String regionName) async {
    Response res = await get(countryApi + 'region/' + regionName);
    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<CountryModel> countries =
          body.map((dynamic item) => CountryModel.fromJson(item)).toList();
      return countries;
    } else {
      throw "Unable to load data";
    }
  }
}
