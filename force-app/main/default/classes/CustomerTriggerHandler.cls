public with sharing class CustomerTriggerHandler {
    public static void deletePayments(list<customer__c> customernew, 
                                        list<customer__c> customerold,
                                        map<id, customer__c> customerNewMap,
                                        map<id, customer__c> customerOldMap) {
        set<id> CustomerIds = new set<id>();
        set<id> CustomerIds2 = new set<id>();

        for (customer__c eachCus: customerold) {
            if (eachCus.active__c == true) {
                CustomerIds.add(eachCus.id);   
            }else if(eachCus.active__c == false){
                CustomerIds2.add(eachCus.id);
            }

        }
        if (!CustomerIds.isEmpty) {
            list<payment__c> lstPayments = [select id, name from payment__c where customer__r in :CustomerIds and mode__c = 'Online'];
            delete lstPayments;
        }
            
            
        }

       
            
        

}
