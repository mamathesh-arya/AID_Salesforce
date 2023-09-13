public class MyContactListController {

    @AuraEnabled
    public static List<Contact> getContacts (Id recordId){
        return [select Id,Name,LastName,Email,Phone FROM Contact where AccountId = : recordId];
    }
}