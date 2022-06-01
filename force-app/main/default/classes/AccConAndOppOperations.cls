public class AccConAndOppOperations {
    public static list<account> fetchAccounts(){
        list<account> listAcc = new List<Account>();
        listAcc = [select name, annualrevenue, type, accountsource from Account];
        System.debug(listAcc);
        return listAcc;   
    }
    public static void fetchOpp(String ls, string stg) {
        List<Opportunity> listOpp = new List<Opportunity>();
        listOpp = [select name, stagename, leadsource from Opportunity where LeadSource= :ls and stagename = :stg];
        System.debug(listOpp);   
    }
    public static void fecthAccOpp() {
        list<Account> listAccOpp = new List<Account>();
        listAccOpp = [select name, annualrevenue, (select name, amount from Opportunities where stagename = 'Closed Won') FROM Account where type = 'Customer - Direct'];
        System.debug(listAccOpp);

        for (account Acc : listAccOpp) {
            System.debug(acc.name + ' and ' + acc.AnnualRevenue);
            for (opportunity opp : acc.opportunities) {
                System.debug(opp.Name + ' and ' + opp.Amount); 
            }
        } 
    }

    public static account insertAcc(string accName, Decimal annRev, String Type ) {
        Account newAcc = new Account();
        if (accName != null) {
            newAcc.Name = accName;
            newAcc.AnnualRevenue = annRev;
            newAcc.Type = Type;
            insert newAcc;
            
        } else {
            System.debug('Account without name cannot be created.');   
        }
        return newAcc; 
    }
    public static decimal oppClosedWon() {
        list<opportunity> listOpp = [select id, name, Amount from Opportunity where amount != null and StageName = 'Closed Won'];
        decimal sum = 0;
        for (opportunity opp1 : listOpp) {
            sum += opp1.Amount;  
        }
        System.debug('Closed won amount sum = ' + sum);
        return sum;    
    }
    public static List<account> accountsWithAtLeastOneOpp(string stgName){
        list<account> lstAcc = new List<account>();
        lstAcc = [select id, name from Account where id In (select accountId from Opportunity where StageName= :stgName)];

        System.debug('Accounts with at least one opp ' + lstAcc);
        return lstAcc;
    }
    public static list<account> allAccList() {
        list<account> lstAccCon = [select id, name from account where id IN (select accountId from Contact)];

        System.debug('Accounts with at least one contact ' + lstAccCon);
        return lstAccCon;  
    }
    public static void createContact(id AccId) {
        account Acc = [select id, name from Account where id =:AccId];
        contact AccCon = new contact ();
        AccCon.lastname = Acc.Name;
        AccCon.AccountId = Acc.Id;

        insert AccCon;
        System.debug(AccCon);
    }
    public static void fetchOpp() {
        list<opportunity> OppLst = [select id, name, description, Amount from Opportunity where Amount != null and (stagename != 'Closed Won' or stagename != 'Closed Lost') order by Amount desc limit 10 ];

        for (opportunity eachOpp : OppLst) {
            eachOpp.description = 'This is one of the top 10 opportunities. Please work on this opportunity.';  
        }
        update OppLst;  
        System.debug(OppLst);
    }
    public static List<Opportunity> insertOpp(id AccId, integer n) {
        list<opportunity> Opplst = new List<Opportunity>();
        account Acc = new Account();
        Acc.id = AccId;
        if (n==0) {
            System.debug('Please tell us how many opp needs to be created.');
        }else{
            for (Integer i = 0; i < n; i++) {
                Opportunity newOpp = new Opportunity();
                newOpp.Name = 'Test Opportunity ' + i;
                newOpp.CloseDate = date.today().addYears(3);
                newOpp.StageName = 'Prospecting';
                newOpp.Amount = Acc.AnnualRevenue/n;
                newOpp.AccountId = Acc.id;
                Opplst.add(newOpp);  
            }
            insert OppLst;
        }
        return Opplst;
    }
}