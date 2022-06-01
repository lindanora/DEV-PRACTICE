public class AirlineTicketInfo {
    public String departure = '';
    public String arrival = '';
    public String flightNumber = '';
    public String seat = '';

    public void printTicket(){
        System.debug('This ticket is for the journey from ' + departure + ' to ' + arrival);
    }
}
