import 'package:bitcoin_ticker/services/network_helper.dart';

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

const bitcoinAverageURL =
    'https://apiv2.bitcoinaverage.com/indices/global/ticker';

class CoinData {
  Future getValueForCurrency(String currency) async {
    var requestURL = '$bitcoinAverageURL/BTC$currency';
    var networkHelper = NetworkHelper(url: requestURL);
    var currencyData = await networkHelper.getData();
    return currencyData;
  }
}
