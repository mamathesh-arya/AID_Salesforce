trigger Test_trigger_on_Contact on Contact (before insert,before update) {
  
    /*if(trigger.isBefore && trigger.isUpdate){
        System.debug('-> Fired isbefore & isUpdate');
        System.debug('-> BEFORE Trigger.New values ->>');
        Contact con = new Contact();
        List<Contact> conListNew = Trigger.new;
		List<Contact> conListOld = Trigger.Old;
         
        System.debug('Before Number Old Value -->'+conListOld[0].Number__c);
        System.debug('Before Number New Value -->'+conListNew[0].Number__c);
        
        conListNew[0].Number__c=14;
       
       
        
        System.debug('Before Number Old Value vc-->'+conListOld[0].Number__c);
        System.debug('Before Number New Value vc-->'+conListNew[0].Number__c);
    }

    if(Trigger.isAfter){
        
     
    }*/
}