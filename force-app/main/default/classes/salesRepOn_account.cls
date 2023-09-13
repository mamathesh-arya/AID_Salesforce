public class salesRepOn_account {
    
    public static void insertSalesRep_onAccount(List<Account> acc){
        System.debug('Method Called');
        Account act = new Account();
        Set<Id> idset = new Set<Id>();
      
        for(Account ac :acc){
            idset.add(ac.OwnerId);
        }
        
        
      
       
    }

}
//0055g00000C5qfpAAB