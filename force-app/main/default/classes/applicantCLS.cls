public class applicantCLS {
    
    public static void m1(){
        course__c cource = new course__c();
        Applicant__c app = new Applicant__c();
        cource.Name = 'testing Mg';
        cource.trailBox__c = true;
        cource.Cource_Name__c = 'BCA';
        app.Name = 'testApp123567';
        app.course_del__c = cource.Id;
        
        try{
            insert cource;
        }catch(Exception ex){
            System.debug('Exception->'+ex);
        	//insert app;
        }
        
        
    }

}