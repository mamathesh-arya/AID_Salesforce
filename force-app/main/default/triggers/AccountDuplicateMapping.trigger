trigger AccountDuplicateMapping on Account (before insert,after insert) {
    
    if(Trigger.IsExecuting && Trigger.isBefore && Trigger.IsInsert){
        System.debug('Iam in Before Insert '+Trigger.isBefore+' '+Trigger.IsInsert);
      // AccountDuplicateMappingHellper.searchDuplication(Trigger.new);
    }

    if(Trigger.IsExecuting && Trigger.isAfter && Trigger.IsInsert){
    	// AccountDuplicateMappingHellper.InsertDuplicate_to_AccountDuplicatioMapper();
    }
}