global class sendEmailsToContact implements Database.Batchable<sObject> {
    global database.QueryLocator start(database.batchableContext bc) {
        
        String query='';
        query ='select id,LastName,Email From Contact where CreatedDate = TODAY Limit 3 ';
        
        return database.getQueryLocator( query);
        
    }
    global void execute(Database.BatchableContext bc, List<Contact> conList){
        
       
        List<Messaging.SingleEmailMessage> emailList = new List<Messaging.SingleEmailMessage>();
        Messaging.SingleEmailMessage emailMsgId = new Messaging.SingleEmailMessage();
        //userEmailId.add(UserInfo.getUserEmail());
        List<Contact> cont = new List<Contact>();
        for (Contact c : conList){
            List<String> userEmailId = new List<String>();
            if(c.Email != null){
            System.debug('accList');
            cont.add(c);
            userEmailId.add(c.Email);
            emailMsgId.setToAddresses(userEmailId);
            emailMsgId.setSubject('conformation to '+ c.LastName);
            emailList.add(emailMsgId);
            }
        }
        
        
        
       
        System.debug('email List '+emailList);
        
        if(emailList.size()>0){
            Messaging.sendEmail(emailList);
            System.debug('Message sent ');
        }
        
        
        // process each batch of records
    }    
    global void finish(Database.BatchableContext bc){
        // execute any post-processing operations
    }    
}