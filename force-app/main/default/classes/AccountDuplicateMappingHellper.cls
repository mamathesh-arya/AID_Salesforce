/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 09-13-2023
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class AccountDuplicateMappingHellper {
    
   
    public static Map<String,Account> newMapList = new Map<String,Account>();
    public static List<AccountDuplicatioMapper__c> acDupInsertList = new List<AccountDuplicatioMapper__c>();
    public static Map<String,List<String>> craiteriaRules = new Map<String,List<String>>();
    public static  Map<Id,Account> mpList = new Map<Id,Account>();
   
    public static void searchDuplication(List<Account> dupAcc){
        AccountDuplicatioMapper__c accDupRecInMapper = new AccountDuplicatioMapper__c();
        System.debug('searchDuplication called');
        System.debug('hii Sample');
        SET<String> newStrRec = new SET<String>();
        for(Account acc : dupAcc){
            newStrRec.add(String.valueOf(acc.Name));
        }
        
        Integer count=0;
        // diptesh & diptesh--2 records.
  	List<Account> accLists = [SELECT ID,NAME FROM ACCOUNT WHERE NAME LIKE : newStrRec ORDER BY CreatedDate DESC ];
        System.debug('accLists --- > '+accLists);
   
        for(Account ac : accLists){
            count++;
            // check if value is there do not add 
           
            if(newMapList.containsKey(ac.Name)){
                
            }else{
                 newMapList.put(ac.Name,ac);
            }
            
        }
        System.debug('count---'+count);
     	System.debug('Map List == > '+newMapList);
        
        
        for(Account acc : dupAcc ){
            try{
                if(newMapList.containsKey(acc.Name)){
                    
                   
                  /*  List<Account> accList = new List<Account>{newMapList.get(acc.Name)};
                        for(Account ac2 : accList){
                           acc.Name = acc.Name+' Duplicated';
                            acc.ParentId = ac2.Id;
                            mpList.put(ac2.Id, acc);
                            
                        }
                    accList.clear();
                    */
                    
                     acc.ParentId = newMapList.get(acc.Name).Id;
                     acc.Name = acc.Name+' Duplicated';
                     mpList.put(acc.Id, acc);
                }
                
                
            }catch(Exception ex){
                System.debug('Exception raised ');
                accDupRecInMapper.Name = acc.Name;
                accDupRecInMapper.Message__c = ex.getMessage();
                accDupRecInMapper.Staus__c ='Failed';
                acDupInsertList.add(accDupRecInMapper);
                
            }
        }
                
    }            
        
    
    
    public static void InsertDuplicate_to_AccountDuplicatioMapper(){
        
         if(Trigger.IsAfter){
             
                 AccountDuplicatioMapper__c accDupRecInMapper = new AccountDuplicatioMapper__c();    
                 
                 
                 for(Account acRec : mpList.values()){
                     accDupRecInMapper.Duplicate_Account_ID__c = acRec.Id;
                     accDupRecInMapper.Name = acRec.Name;
                     accDupRecInMapper.Message__c = 'Record Inserted';
                     accDupRecInMapper.Staus__c = 'Success';
                     acDupInsertList.add(accDupRecInMapper);
                 }
                 
                 if(acDupInsertList.size()>0){
                     INSERT acDupInsertList;
                     acDupInsertList.clear();
                 }        
              
            }
            
    }
    
    public static void getCraiteriaRules(){
        System.debug('I am Excuted First ');
        
        
    }
}