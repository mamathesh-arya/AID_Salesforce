trigger testOnCourse on course__c (before Insert,After Insert, before update,after update) {
if(Trigger.isInsert){
        if(Trigger.isBefore){
           System.debug('Before insert Trigger executed');
        }
        if(Trigger.isAfter){
            System.debug('After insert Trigger executed');
        }
    }
    if(Trigger.isUpdate){
        if(Trigger.isBefore){
           System.debug('Before Update Trigger executed');
        }
        if(Trigger.isAfter){
            System.debug('After Update Trigger executed');
        }
    }
}