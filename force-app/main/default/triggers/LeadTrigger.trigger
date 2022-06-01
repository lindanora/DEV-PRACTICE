trigger LeadTrigger on lead (before insert, before Update, after Insert, after Update ) {
   if (trigger.isbefore && trigger.isInsert) {
      for (lead ld : trigger.new) {
         // System.debug(ld.LastName + ' is created successfully!');  
         if (ld.LeadSource == 'Web') {
            System.debug('Rating should be Cold.');
            
         }else{
            System.debug('Rating should be hot.');
         }
      }  
   }
}