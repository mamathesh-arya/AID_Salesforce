public class SendEmails {

    
    public void SendEmail(String address, String subject)
    {
        List<Messaging.SingleEmailMessage> emailList = new List<Messaging.SingleEmailMessage>(); //, Creating email List
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage(); // Creating Single email instance
        String[] toAddress = new String[]{address}; // here All to address are going to store
            mail.setToAddresses(toAddress);
        	mail.setSubject(subject);
        	mail.setPlainTextBody('No ref');
                                  
        	mail.setHtmlBody(
            
            
               '<h3> Hello Dear this is a just empty body</h3><br> HAVE A FUN AND TRAIL'
            
            );
                     
        //helper method
        
        Messaging.SendEmailResult[] result =  Messaging.SendEmail(new Messaging.SingleEmailMessage[]{mail});
        
        inspectResult(result);    
        
    }
    
    public Boolean inspectResult(Messaging.SendEmailResult[] results){
        Boolean fRes = true;
        
        for(Messaging.SendEmailResult res : results){
           // Boolean st = true;
            if(res.isSuccess()){
                System.debug('Mail sent Successfully for Address');
            }else
            {
                fRes=false;
                System.debug('Mail sent Successfully for Address'+res.getErrors());
            }
        }
        return fRes;
    }
    
}