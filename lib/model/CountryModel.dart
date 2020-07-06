import 'package:flutter/foundation.dart';

class CountryModel {
  final String capital;
  final String flag;
  final String name;
  final String region;
  final String subregion;
  final int population;
  final String demonym;
  final double area;
  final String nativeName;
  final String numericCode;
  final String alpha2Code;

  CountryModel({
    @required this.name,
    @required this.nativeName,
    @required this.capital,
    @required this.region,
    @required this.subregion,
    @required this.population,
    @required this.area,
    @required this.demonym,
    @required this.alpha2Code,
    @required this.numericCode,
    @required this.flag,
  });

  factory CountryModel.fromJson(Map<String, dynamic> json) {
    return CountryModel(
      name: json['name'] as String,
      nativeName: json['nativeName'] as String,
      capital: json['capital'] as String,
      region: json['region'] as String,
      subregion: json['subregion'] as String,
      population: json['population'] as int,
      area: json['area'] as double,
      demonym: json['demonym'] as String,
      alpha2Code: json['alpha2Code'] as String,
      numericCode: json['numericCode'] as String,
      flag: json['flag'] as String,
    );
  }
}
