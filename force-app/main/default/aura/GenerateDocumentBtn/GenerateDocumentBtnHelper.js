({
	getUrl1 : function(component, event, helper) {
      var recordId = component.get('v.recordId');
        var action = component.get('c.redirect');
        //alert('recordId---'+recordId);
        action.setParams({
            'recordId': recordId
        });
        action.setCallback(this, function(response){
            var state = response.getState();
             //alert('state---'+state);
            if(state == 'SUCCESS') {
                //alert('in 1');
                var resultValue = response.getReturnValue();
                //alert('resultValue : '+resultValue);
                console.log('resultValue : '+resultValue);
         	 
                    //alert('4 resultValue : '+resultValue);
                    component.find("navService").navigate({    
                        "type": "standard__webPage",
                        "attributes": {
                            "url": resultValue // url returned from apex
                        }
                    })
                    //this.checkDocsGenereted(component, event, helper); 
                
                var dismissActionPanel = $A.get("e.force:closeQuickAction");
                dismissActionPanel.fire();
                //window.setTimeout(function(){location.reload()},4000);
            }else{
                console.log('Error occured');
            }
        });
        $A.enqueueAction(action);  
		
	},
})