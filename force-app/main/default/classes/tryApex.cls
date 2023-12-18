/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 10-18-2023
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class tryApex {

    public static void check()
    {
        Account c = tryApex.ex(true);
        if(c != null){
            System.debug('Hii Shrumtech -> Test1');
        }else{
            System.debug('Yes NULLi');
        }

    }

    public static  Account ex(Boolean a){
        Account abc;

        if(a){
            abc = new Account();
            return abc;
        }
    return abc;
    }
}
//List Exception