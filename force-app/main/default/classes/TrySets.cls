public class TrySets {
//test
   public static void  ts(){
      /*List <Id> listID = new list<Id>{'0015g00001BcBGpAAN','0015g00001BcBGtAAN','0015g00001BbbCYAAZ'};
      //code addedd
       List <Account> accList = [select name from Account where id in : listID];
       SET <Account> setList = new SET<Account>([select name from Account where id in: listID]);
        set <Id> s = new set<Id>();
        System.debug('accList size -- '+ accList.size());
        System.debug('accList -- '+ accList);
        System.debug('setList size -- '+ accList.size());
        System.debug('setList -- '+ setList);
       
       List <String> accList2 = new List<String>();
       Set  <Account> setList2 = new Set <Account>();
       
       System.debug('Entering acc For loop');
       for(Account ac : accList){
           System.debug('Name - '+ac.Name);
           accList2.add(ac.Name);
           System.debug('Id '+ac.Id);
       }
       
       System.debug('Entering set for loop');
       for(Account ac : setList){
           setList2.add(ac);
           System.debug('Name '+ ac.Name);
           s.add(ac.Id);
           System.debug('Id '+ ac.Id);
       }
       
       for(Account ac : setList){
           s.add(ac.Id);
           setList2.add(ac);
           System.debug('Name '+ ac.Name);
           System.debug('Id '+ ac.Id);
       }    
       
       
       System.debug('accList -- '+ accList2);
       System.debug('setList2 -- '+ setList2);
       System.debug('setList -- '+ s);
       System.debug('size s -- '+ s.size());
       
        */
       
       Set<String> ss = new Set<String>{'Test','Test'};
           SYstem.debug('sssss'+ss);
       System.debug('SS->'+ss);
    }
    
}