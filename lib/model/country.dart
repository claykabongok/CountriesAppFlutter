class Country {
  final String capital;
  final String flags;
  final String name;
  final String region;
  final String subregion;
  final String population;
  final String demonym;
  final double area;

  final String nativeName;
  final String numericCode;
  final String alpha2Code;

  Country({
    this.name,
    this.nativeName,
    this.capital,
    this.region,
    this.subregion,
    this.population,
    this.area,
    this.demonym,
    this.alpha2Code,
    this.numericCode,
    this.flags,
  });
}

final africanCountriesList = [
  Country(
      name: 'Benin',
      nativeName: 'Bénin',
      capital: 'Porto-Novo',
      region: 'Africa',
      subregion: 'Western Africa',
      population: '10653654',
      area: 112622.0,
      demonym: 'Beninese',
      alpha2Code: 'BJ',
      numericCode: '204',
      flags: 'https://restcountries.eu/data/ben.svg'),
  Country(
      name: 'Angola',
      nativeName: 'Angola',
      capital: 'Luanda',
      region: 'Africa',
      subregion: 'Middle Africa',
      population: '25868000',
      area: 1246700.0,
      demonym: 'Angolan',
      alpha2Code: 'AO',
      numericCode: '024',
      flags: 'https://restcountries.eu/data/ago.svg'),
  Country(
      name: 'Senegal',
      nativeName: 'Sénégal',
      capital: 'Dakar',
      region: 'Africa',
      subregion: 'Western  Africa',
      population: '14799859',
      area: 88361.0,
      demonym: 'Senegalese',
      alpha2Code: 'SN',
      numericCode: '686',
      flags: 'https://restcountries.eu/data/sen.svg'),
  Country(
      name: 'Congo DR',
      nativeName: 'Kinshasa',
      capital: 'Luanda',
      region: 'Africa',
      subregion: 'Middle Africa',
      population: '25868000',
      area: 1246700.0,
      demonym: 'Angolan',
      alpha2Code: 'AO',
      numericCode: '024',
      flags: 'https://restcountries.eu/data/cod.svg'),
  Country(
      name: 'Mozambique',
      nativeName: 'Maputo',
      capital: 'Maputo',
      region: 'Africa',
      subregion: 'Middle Africa',
      population: '25868000',
      area: 1246700.0,
      demonym: 'Angolan',
      alpha2Code: 'AO',
      numericCode: '024',
      flags: 'https://restcountries.eu/data/moz.svg'),
];
