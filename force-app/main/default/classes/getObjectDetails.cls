public class getObjectDetails {
    
    public static void getThisDetails(ID recordId){
        String parentId = recordId.getSObjectType().getDescribe().getName();
        System.debug('ParentId->'+parentID);
		
    }

}