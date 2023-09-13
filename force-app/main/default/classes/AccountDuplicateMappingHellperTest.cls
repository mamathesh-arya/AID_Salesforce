@isTest
public class AccountDuplicateMappingHellperTest {

    @isTest
    public static void TestgetDuplication(){
        List<Account> ac = new List<Account>();
        Account a = new Account();
        a.Name='Thiru123';
        ac.add(a);
        
        Account b = new Account();
        b.Name='Shamsundar Rao3';
        ac.add(b);
        
        insert ac;
        
        
	AccountDuplicateMappingHellper.searchDuplication(ac);
    }
}