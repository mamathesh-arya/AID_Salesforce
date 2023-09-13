public class postfixTestonAcc {
    
    
    public static List<Account> postfixTest(List<Account> accList){
      
        List<Account> updateList = new List<Account>();
        System.debug('coming Llist '+ accList);
        for (Account acc : accList){
           
            acc.Name = acc.Name +' '+'Test';
            acc.Description = 'Test purpose';
            updateList.add(acc);
        }
        
        update updateList;
        
        System.debug('updated List '+updateList);
         
        return updateList;
    
    }

}