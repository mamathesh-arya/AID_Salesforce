import { LightningElement, track } from 'lwc';

export default class TodoManager extends LightningElement {
    
    
  @track
    todoTasks=[];
    newTask="";

    updateNewtask(event)
    {
       this.newTask=event.target.value;

    }
    addNewTasks(event){
        //* use unshift () so to add elemets at beginig of array
        //*push function appending on end of array
        this.todoTasks.push({
            id:this.todoTasks.length+1,
            Name:this.newTask
        });
      
        this.newTask='';
        console.log(this.todoTasks);
        
    
    }
  
    deleteTask(event){
        let deleteId=event.target.name;
        let todoTasks=this.todoTasks;
        let delId;
        console.log("delete method "+event.target.name)
        for(let i=0; i<todoTasks.length;i++){
            if(deleteId === todoTasks[i].id){
                delId=i;
            }

        }
       // console.log("delete id is "+delId);
        this.todoTasks.splice(delId,1);
        JSON.stringify(this.todoTasks);//to convert proxy mehod
        console.log(this.todoTasks);
       
    }

   
   
}