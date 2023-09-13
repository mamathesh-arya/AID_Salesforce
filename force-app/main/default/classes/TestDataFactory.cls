@isTest
public class TestDataFactory {

    
    public static List<Account> createAccWithMandF (String Name, Integer noRecords){
        
        List<Account> accList = new List<Account>();
        for(Integer i =0 ; i<noRecords ; i++){
            
            Account ac = new Account();
            ac.Name = Name+noRecords;
            accList.add(ac);
            
        }
        
    return accList;
    }
}