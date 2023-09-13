trigger donotAssociateCon on Contact (before insert,before Update) {
    
    if(Trigger.isBefore && (Trigger.IsInsert || Trigger.IsUpdate)){
        
        DontAssociate.dontassociate(Trigger.new);
        
    }

}