public class Students {
    public String firstName = '';
    public String lastName = '';
    public String classYear = '';
    public String major = '';

    public string generateReport(){
        System.debug('Report generated for ' + firstName + ' ' + lastName + ' of ' + classYear);
        return major;
    }
}
