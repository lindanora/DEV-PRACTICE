public class AccountTriggerHandler {
    public static void updateAnnualrev (List<Account> acctriggernew, 
                                        List<Account> acctriggerold,        
                                        map<id, Account> accNewMap, 
                                        map<id, Account> accOldMap)
    {
        for(account eachAcc: acctriggernew){
            if(eachAcc.AnnualRevenue < accOldMap.get(eachAcc.Id).AnnualRevenue || eachAcc.AnnualRevenue == null){
                eachAcc.AnnualRevenue.addError('Annual Revenue for an account cannot be reduced.');
            }
        }
    }
}
