import 'package:flutter/foundation.dart';

class CountryModel {
//  private String[] topLevelDomain;
//  private String[] callingCodes;
  final String capital;
  final String flag;
//  private String[] altSpellings;
  final String name;
  final String region;
  final String subregion;
  final int population;
//  private double[] latlng;
  final String demonym;
  final double area;
//  private String[] timezones;
//  private String[] borders;
  final String nativeName;
  final String numericCode;
  final String alpha2Code;
//  private List<currencies> currencies;
//  private List<languages> languages;
  //final translations translations;
//  private List<regionalBlocs> regionalBlocs;

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

/*

 private String name;
    private String[] topLevelDomain;
    private String[] callingCodes;
    private String capital;
    private String[] altSpellings;
    private String region;
    private String subregion;
    private String population;
    private double[] latlng;
    private String demonym;
    private double area;
    private String[] timezones;
    private String[] borders;
    private String nativeName;
    private String numericCode;
    private String alpha2Code;
    private List<currencies> currencies;
    private List<languages> languages;
    private translations translations;
    private List<regionalBlocs> regionalBlocs;
 */
