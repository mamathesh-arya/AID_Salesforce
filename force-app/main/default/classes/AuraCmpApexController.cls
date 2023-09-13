public class AuraCmpApexController {
@AuraEnabled
    public static List<Account> getAccounts(){
        List<Account> accList = [select Name,Phone,Ownership from Account Limit 10];
        return accList;
    }
}