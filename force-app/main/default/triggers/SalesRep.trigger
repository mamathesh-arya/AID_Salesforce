trigger SalesRep on Account (before insert, before update) {
    
    ACC_SalesRep_Handler handler = new ACC_SalesRep_Handler();
    
    if(trigger.isbefore && (trigger.isInsert || trigger.isUpdate)){
        // call the trigger Handler 
        handler.copyAndUpdate_ownersName(trigger.new);
    }

}