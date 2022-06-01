public class PlayingWithDates {
    public void printDateOutput(){
        Date todayDate = Date.today();
        System.debug('Today is ' + todayDate);

        Datetime currentTime = Datetime.now();
        System.debug('Current time ' + currentTime);

        Date Date1 = Date.newInstance(2789, 11, 5);
        System.debug('My date 1 is: ' + Date1);

        Date Date2 = Date.newInstance(1459, 4, 4);
        System.debug('My date 2 is ' + Date2);

        Integer dayInt = 5;
        Integer monthInt = 12;
        Integer yearInt = 2005;

        Date newDate= Date.newInstance(yearInt, monthInt,dayInt);
        System.debug('My new date is ' + newDate);
    }
}
