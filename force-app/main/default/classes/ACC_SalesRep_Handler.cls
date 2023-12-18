/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 12-18-2023
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class ACC_SalesRep_Handler {
    
    public  void copyAndUpdate_ownersName(List<Account> mapList){
        
    Set<Id> userId = new Set<Id>();
    
    List<Account> accList = [Select Owner.Id FROM Account Where Id In: mapList];
    System.debug('accList '+accList);
    System.debug('Hello');
    System.debug('Sam');
       // List<User> uName = [Select FirstName FROM User Where id in : accList];
        for(Integer i=0; i<accList.size(); i++){
            userId.add(accList[i].OwnerId);
// I am working in here
// Adding second changes
        }
    
    }

}