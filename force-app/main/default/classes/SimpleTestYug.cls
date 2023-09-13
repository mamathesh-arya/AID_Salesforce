public class SimpleTestYug {

  
    public static string createacc(string nm,string pn,string fx,string ds)
    {
        string msg;
        
        Account a = new Account();
        a.Name=nm;
        a.Phone=pn;
        a.Fax=fx;
        a.Description=ds;
        insert a;
        msg='The Account Created Successfully'+a.id;
        return msg;
}
}