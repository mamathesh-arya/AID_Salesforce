trigger Validate_Phno_Aplc on Applicant__c (before insert,before update) {

    Validate_Phno_Aplc validate = new Validate_Phno_Aplc();
    System.debug('Trigger Fired on Before '+trigger.isbefore + ' Insert '+trigger.isInsert);
    System.debug('Trigger Fired on Before '+trigger.isbefore + ' Update '+trigger.isUpdate);
    validate.validating(Trigger.new);
    
}