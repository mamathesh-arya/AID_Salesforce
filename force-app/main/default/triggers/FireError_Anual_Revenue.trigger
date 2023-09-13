trigger FireError_Anual_Revenue on Account (before insert,before Update,after insert , after update) {

    if(Trigger.isExecuting){
        System.debug('Trigger is Execting '+ trigger.isExecuting);
        if(trigger.isBefore && (trigger.isInsert || trigger.isUpdate)){
             System.debug('Before trigger ');
            System.debug('Trigger Insert '+trigger.isInsert);
            System.debug('Trigger is Updating '+trigger.isUpdate);
            System.debug('Method Calling');
            //salesRepOn_account.insertSalesRep_onAccount(Trigger.new);
           
        }
        
    }
    
    }