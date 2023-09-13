public class TryMaps {
    
    public static void maping(){
        //list
        //List <String> str = new List<String>{'Test 1','Test 2'};
         List <Account> str1 = [select Name FROM ACCOUNT];
        List<String> str = new List<String>();
        for(Account a : str1){
            str.add(String.valueOf(a.Name));
        }
     
       
   // System.debug('count-- '+count);
       
    }
    
    
}