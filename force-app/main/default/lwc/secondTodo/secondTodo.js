import { LightningElement,api } from 'lwc';

export default class SecondTodo extends LightningElement {
@api todoid;
@api todoName;
@api done=false;

get container()
{
    return this.done?"todo Completed":"todo UpComming"
}
}