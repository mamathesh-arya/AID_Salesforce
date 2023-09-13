public class TestingAuraCtrl {
    
    @AuraEnabled     
     public static List<String> getTypePickValues() {
     List<String> pTli = new List<String>();
         
      Schema.DescribeFieldResult fieldResult = Account.Industry.getDescribe();    
      
      List<Schema.PicklistEntry> typepic = fieldResult.getPicklistValues();
         
         for(Schema.PicklistEntry p : typepic){
             pTli.add(p.getLabel());
         }
         System.debug('--->'+pTli);
         
        
     return pTli;
    }
    


}