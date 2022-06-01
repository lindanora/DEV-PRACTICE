public class OpportunityTriggerHandler {
    public static void OpportunityCreate(list<opportunity> OppTriggerNew){
        integer totalNumOfOpp =OppTriggerNew.size();
        system.debug('The total number of opportunity = ' + OppTriggerNew);
        for(Opportunity eachOpp: OppTriggerNew){
            System.debug('Opprtunity name is ' + eachOpp.Name + ' Close date is ' + eachOpp.closedate + ' Amount = ' + eachOpp.Amount);
        }
    }
    public static void OpportunityUpdate(list<opportunity> OppTriggerNew, map<id, opportunity> oldMapOpp){
        for(opportunity eachOpp: OppTriggerNew){
            system.debug('Old Amount = ' + oldMapOpp.get(eachOpp.id).amount + ' New Amount = ' + eachOpp.Amount);
            system.debug('Old Close date is: ' + oldMapOpp.get(eachOpp.id).closedate + ' New Close Date is: ' + eachOpp.closedate);
        }
    }
    public static void updateStageName(List<Opportunity> oppNew, map<id, Opportunity> oppOldMap){
        for(Opportunity updatedOpp: oppNew){
            string strNew = updatedOpp.StageName;
            string strOld = oppOldMap.get(updatedOpp.id).StageName;
            if(strNew != strOld){
                system.debug('Value of description: ' + updatedOpp.Description + ' Opportunity name is: ' + updatedOpp.Name);
            }
        }
    }
    public static void validationStageName (List<Opportunity> oppNew, map<id, opportunity> oppOldMap){
        for(Opportunity eachOpp: oppNew){
            string strOld = oppOldMap.get(eachOpp.id).StageName;
            if(strOld == 'Closed Won' || strOld == 'Closed Lost'){
                if(eachOpp.StageName != strOld){
                    eachOpp.StageName.addError('You cannot update opp stage name!');
                }
            }   
        }
    }
    public static void OppClosedDate(List<Opportunity> oppNew){
        for(Opportunity eachOpp: oppNew){
            if(eachOpp.StageName == 'Closed Won' || eachOpp.StageName == 'Closed Lost'){
                eachOpp.CloseDate = date.today();
            }else{
                eachOpp.CloseDate = date.today()+15;
            }
        } 
    }
}
