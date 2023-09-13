({
	helperMethod : function(component,event,helper) {
         var action = component.get("c.getAccounts");
        action.setCallback(this,function(response){
            component.set("v.columsTodispay",response.getReturnValue());
        });
		$A.enqueueAction(action);
	}	
})