/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 12-18-2023
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
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
        
        //dev-2 Changing
	AccountDuplicateMappingHellper.searchDuplication(ac);
    }
}