trigger Opportunity on Opportunity (before insert, before Update, after Insert, after Update ) {
   if(trigger.isBefore){
      if(trigger.isInsert){
         OpportunityTriggerHandler.OppClosedDate(trigger.new);
      }
   }







   // if(trigger.isBefore){
   //    if(trigger.isInsert){
   //       OpportunityTriggerHandler.OpportunityCreate(trigger.new);
   //    }
   //    if(trigger.isUpdate){
   //       OpportunityTriggerHandler.OpportunityUpdate(trigger.new, trigger.oldMap);
   //       OpportunityTriggerHandler.updateStageName(trigger.new, trigger.oldMap);
   //       OpportunityTriggerHandler.validationStageName(trigger.new, trigger.OldMap);
   //    }
   // }






   // if (trigger.isbefore && trigger.isUpdate) {
   //    for (opportunity eachOpp : trigger.new) {
   //       System.debug('New opp names: ' + eachOpp.name + ' New Opp Amounts ' + eachOpp.Amount);
   //       System.debug('Old opp names: ' + trigger.oldMap.get(eachOpp.Id).Name + ' Old Opp Amounts ' + trigger.oldMap.get(eachOpp.Id).amount);   
   //    } 
   // }
}