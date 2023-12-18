import { LightningElement } from 'lwc';

export default class GreetingCard extends LightningElement {
    value = 'inProgress';

    get options() {
        return [
            { label: 'New', value: 'new' },
            { label: 'In Progress Level-1', value: 'inProgress' },
            { label: 'Finished', value: 'finished' },
        ];
    }
//comment Added
    handleChange(event) {
        this.value = event.detail.value;
    }
    // Commenting from A2 Branch
}