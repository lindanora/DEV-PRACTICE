public class CurrencyExchange {
    public static void fetchCurrency() {
        map<string, decimal> currISOCodeAndExchangeRateMap = new Map<String,Decimal>();
        currISOCodeAndExchangeRateMap.put('AUD', 0.73);
        currISOCodeAndExchangeRateMap.put('CAD', 0.78);
        currISOCodeAndExchangeRateMap.put('EUR', 1.13);
        currISOCodeAndExchangeRateMap.put('NZD', 0.68);
        currISOCodeAndExchangeRateMap.put('INR', 0.013);
        system.debug(currISOCodeAndExchangeRateMap);

        System.debug(currISOCodeAndExchangeRateMap.get('EUR'));
        System.debug(currISOCodeAndExchangeRateMap.get('SAD'));

        Boolean checkISD = currISOCodeAndExchangeRateMap.containsKey('SAD');
        System.debug(checkISD);

        Set<String> isoCodes = currISOCodeAndExchangeRateMap.keySet();
        System.debug(isoCodes);

        List<String> greaterOrEqual_1 = new List<String>();
        List<String> lessThan_1 = new List<String>();

        for (string eachKey : isoCodes) {
            decimal values = currISOCodeAndExchangeRateMap.get(eachKey);

            if (values >= 1.0) {
                greaterOrEqual_1.add(eachKey);
            }else{
                lessThan_1.add(eachKey);  
            }
        }
        System.debug('greater and equal to 1: ' + greaterOrEqual_1); 
        System.debug('less than 1; ' + lessThan_1);
    }
}
