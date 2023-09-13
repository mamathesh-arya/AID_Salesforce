import { LightningElement} from 'lwc';

export default class FirstLwcc extends LightningElement {
    name = "mamathesh_Arya";
    title="Salesforce Developer";
    changeHandler(event){
        this.title=event.target.value

    }
}