public class EmailMissionSpecialist {

    public void sendMail(String address, String subject,String body){
        
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        String[] email_ids = new String[]{address};
        mail.setToAddresses(email_ids);
        mail.setSubject(subject);
        mail.setPlainTextBody(body);
        
        
        
    }
}