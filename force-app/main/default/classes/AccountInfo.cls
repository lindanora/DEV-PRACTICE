public class AccountInfo {
    public static void showAccounts() {
        list<account> accList = [select id, name, (select id, CloseDate from Opportunities where CloseDate > TODAY) FROM Account];  
        System.debug(accList);
    }
}
