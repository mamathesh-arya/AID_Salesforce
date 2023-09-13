public class DontAssociate {
    
    public static void dontassociate(List<Contact> conList){

       // SET<ID> s = new SET<ID>([select id From conList]);
        List<Contact> con  = [select id,Name, Account.dont_Associate__c FROM Contact wheRE id in : conLIST];
        System.debug('conList is --> '+con);
        for (Contact c : con){
            if(c.Account.dont_Associate__c != null && c.Account.dont_Associate__c == True ){
            
                c.addError('You cant associate this account');
            }
        }
        
    }

}