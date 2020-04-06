import 'dart:convert';

import 'package:http/http.dart' as http;

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  String baseURL='https://rest.coinapi.io/v1/exchangerate';
  String apikey='40521759-57DA-4716-B99C-2A2CD09FD4C6';
  getData(String from,String to) async{
    http.Response response=await http.get('$baseURL/$from/$to?apikey=$apikey');
    if(response.statusCode==200){
      String data= response.body;
      return jsonDecode(data)['rate'].toInt().toString();
    }else
      print('Failed');

  }


}
