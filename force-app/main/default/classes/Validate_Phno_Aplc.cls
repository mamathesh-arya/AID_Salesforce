public class Validate_Phno_Aplc {

    public void validating(List<Applicant__c> apList){
        
        List<Integer> phList = new List<Integer>();
        
        for (Applicant__c ap : apList){
        Integer convert = Integer.valueOf(ap.Phone_No__c);
        phList.add(convert);    
        System.debug('Phone No --> '+ap.Phone_No__c);
        }
    }
}