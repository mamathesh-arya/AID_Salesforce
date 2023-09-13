public class TestOrderExeInSf {

 
    public static void trail(){
        System.debug('Before soql Limit');
        List<Contact> conList = [select Id,LastName From contact Limit 10];
    	
  
           
		
        for(Integer i=0;i<10;i++){
            List<Contact> con2  = [select id FROm contact where id In:conList];
        }
     
    }
}