trigger leadDup on Lead (before insert,before Update) {
    
    /*Set <Id> se = Trigger.OldMap.keySet();
    List <Lead> nw = [Select Id,Name,Email From Lead where Id In : se];
    
    SET <Id> ids = Trigger.newMap.keySet();
    List <Lead> email = [Select Email From Lead where Id In : ids];
    
    for (Integer i = 0 ; i<se.size();i++){
        if(nw[i].Email == email[i].Email){
            System.debug('Yes');
        }
    }
  	
*/
}