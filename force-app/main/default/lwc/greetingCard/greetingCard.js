import { LightningElement } from 'lwc';

export default class GreetingCard extends LightningElement {
    value = 'inProgress';

    get options() {
        return [
            { label: 'New', value: 'new' },
            { label: 'In Progress Level-1', value: 'inProgress' },
            { label: 'In Progress Level-2', value: 'inProgress' },
            { label: 'Finished', value: 'finished' },
        ];
    }
//comment Added
// Comment 2 Added
    handleChange(event) {
        this.value = event.detail.value;
    }
}