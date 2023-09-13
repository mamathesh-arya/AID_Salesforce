trigger SameAsAboveAddress on Applicant__c (before insert) {
    
    if(trigger.isExecuting && trigger.isBefore && trigger.isInsert ){
       
        for(Applicant__c val:trigger.new){
             System.debug('b-Id--> '+val.Id);
            System.debug('Hello i am excuting !');
            
            if(val.same_as_p_Address__c == true){
                val.Street_Address2__c = val.Street_Address__c;
                val.city2__c = val.City__c;
            }
            System.debug('a-Id--> '+val.Id);
        }
        
    }

}