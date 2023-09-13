public class TryList {
    public static Map<String,List<Account>> mp = new Map<String,List<Account>>();
    public static void m1(){
        Boolean isTrue = true;
        String keyname = 'Abc';
        Account a = new Account();
       List<Account> acList = new List<Account>();
       a.Name='Shrmts';
       a.Type = 'prospect';
        //added 
        //2nd
       acList.add(a);
       
        Account t = new Account();
        List<Account> TempList = new List<Account>();
        t.Name='Shrm';
        t.Type='Prospect';
        TempList.add(t);
        mp.put('Abc', TempList);
        
        for(Account ac : acList){
            if(isTrue){
               match(ac,'keyname');
            }
        }
       
    }
    
    public static void match(Account accL, String Keyv){
        if(mp.containsKey(keyv)){
            List<Account> tempList = mp.get(keyv);
            accL.Name = tempList[0].Name;
            accL.Type = tempList[0].Type;
            
        }
    }

}