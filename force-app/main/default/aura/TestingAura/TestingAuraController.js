({
    
    
    myAction: function(component, event, helper) {
        alert('clicked');
        var picVal = component.get("c.getTypePickValues");
        picVal.setCallback(this,function(response){
                           var state = response.getState();
        if(state === "SUCCESS"){
            console.log('val --> '+state);
            var result = response.getReturnValue();
            for(var i in result){
                console.log('val --> '+result[i]);
            }
        }
    });
        $A.enqueueAction(picVal);
    
}
 
 
 
 
 });