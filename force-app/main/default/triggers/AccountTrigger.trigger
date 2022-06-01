trigger AccountTrigger on account (before insert, before Update, after insert, after update) {
   if(trigger.isUpdate && trigger.isBefore){
      AccountTriggerHandler.updateAnnualrev(trigger.new, trigger.old, trigger.NewMap, trigger.OldMap);
   }
}