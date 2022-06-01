trigger CaseTrigger on Case (before insert, before update, after insert, after update) {
   if(trigger.isBefore){
      if(trigger.isinsert){
         CaseTriggerHandler.caseStatus(trigger.new);
      }
   }



//    if (trigger.isBefore && trigger.isUpdate) {
//       for (case cs : trigger.new) {
//          if(cs.Origin != trigger.oldmap.get(cs.id).origin ) {
//          System.debug('Case origin is changed for '+ cs.casenumber); 
//       } 
//    }
// }

   // System.debug('We are in the triggers.');
   // if (trigger.isBefore ) {
   //    System.debug('We are in the before trigger.');
   //    if (trigger.isInsert) {
   //       System.debug('We are in the before-insert trigger'); 
   //       for (case eachCase : trigger.new) {
   //          System.debug('Case ' + eachCase.CaseNumber + ' was created with ' + eachCase.Id + ' on ' + eachcase.CreatedDate); 
   //       }
   //    }
   //    if (trigger.isUpdate) {
   //       System.debug('We are in the before-update trigger');  
   //    }   
   // }
   // if(trigger.isAfter){
   //    System.debug('We are in the after trigger');
   //    if(trigger.isInsert){
   //       System.debug('We are in the after-insert trigger');
   // }
   //    if (trigger.isUpdate) {
   //    System.debug('We are in the after-update trigger');
   //    }
   // }
   }