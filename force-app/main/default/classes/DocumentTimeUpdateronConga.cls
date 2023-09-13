public class DocumentTimeUpdateronConga {
    
   /* public static void getFromWhereItCreated(List<APXT_CongaSign__Recipient__c> conga_TraList){
        
        
  		Map<ID,List<APXT_CongaSign__Recipient__c>> TrRelatedRecip = new Map<ID,List<APXT_CongaSign__Recipient__c>>();	
       
        List<APXT_CongaSign__Recipient__c> RecipentList1 = [select id,APXT_CongaSign__Status__c,APXT_CongaSign__Email__c,APXT_CongaSign__Transaction__c,APXT_CongaSign__Transaction__r.Parent_001__c FROM 
                                                           APXT_CongaSign__Recipient__c 
                                                           where  APXT_CongaSign__Transaction__r.Parent_001__c !=null 
                                                           AND APXT_CongaSign__Transaction__c  =:conga_TraList[0].id
                                                          AND APXT_CongaSign__Status__c = 'COMPLETE'
                                                          AND APXT_CongaSign__SignedOn__c != null
                                                          ORDER BY APXT_CongaSign__SignedOn__c DESC LIMIT 1];
        system.debug('RecipentList1---'+RecipentList1);
        List<ID> OriginAccount = new List<ID>();
        Map<id,string> conJunMap = new Map<id,string>();
        
       for(APXT_CongaSign__Recipient__c rec : RecipentList1){
           
           
           conJunMap.put(rec.APXT_CongaSign__Transaction__r.Parent_001__c,rec.APXT_CongaSign__Email__c);
        
          
        }
        
        system.debug('conJunMap---'+conJunMap);
       
        
       	
        Map<Id,List<Contact>> relatedAcCon = new Map<Id,List<Contact>>();
       
        
        List<Contact_Junction__c> conJunList = [select Contact__r.id, Contact__r.Name, Contact__r.Email,Contact__r.AccountId 
                                                From Contact_Junction__c 
                                                where Contact__r.AccountId IN : conJunMap.keySet()
                                               AND Contact__r.Email =:conJunMap.values()];
        system.debug('conJunList---'+conJunList);
        
        
        for(Contact_Junction__c con : conJunList){
            con.Credit_Auth__c = 'YES';
            Update con;
        }
        
        
   
        
    }
    
*/

}