public class ValidateAddress {
    public void validateHomeAddress(){
        String houseName = 'Home Sweet Home';
        String streetName = 'Midstreem Dr';
        String cityName = 'Dallas';
        String stateName = 'Texas';
        String stateIsoCode = 'Tx';
        String countryName = 'United States of America';
        String countryIsoCode = 'USA';

        Integer numCharacters= streetname.length();
        System.debug('My street name has ' + numCharacters + '.');

        Boolean containsHome = streetName.containsIgnoreCase(houseName);
        System.debug('The street name cointains house name: ' + containsHome);
        
        Boolean containsIsoCode = streetName.containsIgnoreCase(stateIsoCode);
        System.debug('My street name cointains the state Iso code: ' + containsIsoCode);

        String stateIsoUpperCase = stateIsoCode.toUpperCase();
        System.debug('State Iso Code in upper cases ' + stateIsoUpperCase);
        
        String countryIsoUpperCase = countryIsoCode.toUpperCase();
        System.debug('Country Iso code in Upper caes is ' + countryIsoUpperCase);

        String countryUpperCase = countryName.toUpperCase();
        System.debug('My country name in upper case is ' + countryUpperCase);

        String cityNameLowercase =cityName.toLowerCase();
        System.debug('My city name is in Lower cases is ' + cityNameLowercase);

        String stateNameLowerCase = stateName.toLowerCase();
        System.debug('My satate name in lower case is ' + stateNameLowerCase);

        String fullAddress = houseName + ' ' + streetName + ' ' + stateName;
        System.debug('My address is ' + fullAddress);
    }
}
