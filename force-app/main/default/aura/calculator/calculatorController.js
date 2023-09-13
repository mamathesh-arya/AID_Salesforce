({
	calculator : function(component, event, helper) {
        var fnum = component.get("v.fnumber");
        var snum = component.get("v.senumber");
        var action = component.get("c.calValue");
        action.setParams(
            {
                "fnum":fnum, "snum":snum
            }
        );
        action.setCallback(this,function(response){
            var state = response.getState();
            var valFrom = response.getReturnValue();
            if(state == 'SUCCESS'){
                component.set("v.results",valFrom);
            }
        });
	$A.enqueueAction(action);
    }
})