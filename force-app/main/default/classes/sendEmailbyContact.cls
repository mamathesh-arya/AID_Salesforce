public class sendEmailbyContact {

    
    public void getContact(){
        List <Contact> conList = new List<Contact>();
        conList = [select id,LastName,Email From Contact where CreatedDate = TODAY Limit 3 ];
        
        List<Messaging.SingleEmailMessage> emailLists = new List<Messaging.SingleEmailMessage>();
        Messaging.SingleEmailMessage emailMsg = new Messaging.SingleEmailMessage();
        
        List <Contact> cont = new List<Contact>(); 
     
        for(Contact con : conList){
            
            if(con.Email != null){
                cont.add(con);  
            }
            System.debug('Contact '+ cont);
        }
    
        System.debug('emial List '+emailLists);
        if(emailLists.size()>0){
             //Messaging.sendEmail(emailLists);
            System.debug('Message sent ');
        }
      
        
        
    }
    
 
}