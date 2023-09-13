public class GenerateCongaDoc {
/*
    @AuraEnabled
    public static string redirect(String recordId){
        String url = generateURLToCreateDoc(recordId);
        system.debug('url---'+url);
        if(url.contains('/apex/APXTConga4__Conga_Composer?SolMgr=1')){
               PageReference pageRef = new PageReference(url);
               return pageRef.getUrl();
           }else{
               system.debug('else url---'+url);
               return url; 
           }
    }
    
    @AuraEnabled
    public static String generateURLToCreateDoc(String recordId){
        
        String congaurl = '';
        String serverUrl = '{!API.Partner_Server_URL_520}';
        
        Acc_generate_docu__c GenTempId = Acc_generate_docu__c.getValues('Get_Acc_doc_TemID');
        Get_CongaQu__c GetQueryId = Get_CongaQu__c.getValues('Acc_getRelatedCon'); 
        
       // Account acc = [select id From Account where Id =:recordId Limit 1];
        
        String tempId = '';
        String qId = '';
        String ofn = '' ; 
        String rec ='';
        Integer i = 1;
        tempId = [select id,APXTConga4__Key__c FROM APXTConga4__Conga_Template__c WHERE APXTConga4__Key__c =: GenTempId.Template_key__c].APXTConga4__Key__c;
        ofn = GenTempId.Name;
        List<Contact> con = [select id,Name FROM contact where AccountId =:recordId];
        
        if(tempId != null){
                           
                    congaUrl  = '/apex/APXTConga4__Conga_Composer?SolMgr=1'+ 
                        '&serverUrl='+serverUrl +
                        '&Id='+recordId + 
                        '&TemplateId='+ tempId + 
                        '&QueryId='+'[contacts]'+GetQueryId.QueriesID__c +     
                        '&CSVisible=1'+
                        '&DefaultPDF=1'+
                        '&DS7=1141'+
                        '&DS7Preview=1'+
                        '&QMode=CongaSign'+
                        '&CSRoutingType=SERIAL';
                System.debug('conga --> '+ congaUrl);
                System.debug('conga queru -- '+ GetQueryId);
            System.debug('size-- '+con.size());
          if(con.size()>0){
            // '&CSRecipient1=0035g00000vhr9MAAQ'+
           
                for(i=0; i<con.size();i++){
                    //Integer ii = i+1;
                    congaUrl+='&CSRecipient'+(i+1)+'='+con[i].id;
                    System.debug('id --- '+con[i]);
                }
             
            }
            return congaUrl;        
            
        //System.debug('conga --> '+ congaUrl);
        
    }else
    {
        return 'went Wrong in backend';
    }
      
    
}
*/
}