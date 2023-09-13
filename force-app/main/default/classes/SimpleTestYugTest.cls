@isTest
public class SimpleTestYugTest {


  
   @isTest
    public static void testp()
    {   Account a = New Account();

        
       // list<Account> al = New list<Account>();
        string nm = 'wSjklklklkl';    
        string pn = '9123456789';
        string fx = '11111';    
        string ds = 'des';
       // string msg = 'hii'+a.Id;
        a.Name= nm;
        a.Phone =pn ;
        a.Fax= fx;
        a.Description =ds ;
       // al.add(a)  ;  
        
       system.debug('a----->' +a); 
        Test.startTest();
     	insert a;
     	SimpleTestYug.createacc(nm,pn,fx,ds);
     	Test.stopTest();
     
       
       
        // return msg;   
    
    
}
}