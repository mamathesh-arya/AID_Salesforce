@isTest
public class postfixTestonAccTest {

    @isTest
    public static void TestDataonAcc(){
        
       List <Account> ac =  TestDataFactory.createAccWithMandF('SampleM',1);
       
       Test.startTest();
       insert ac;
       List<Account> check =  postfixTestonAcc.postfixTest(ac);
       
        for (Account a : check){
            System.assertEquals('SampleM Test', a.Name);
        } 
       Test.stopTest(); 
        
    }
}