trigger CustomerTrigger on customer (before insert, after insert, before update, after update, after delete) {
   if (trigger.isAfter && trigger.isDelete) {
      CustomerTriggerHandler.deletePayments(trigger.new, trigger.old, trigger.NewMap, trigger.OldMap);
      
   }

}