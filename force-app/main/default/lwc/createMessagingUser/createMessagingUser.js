import { LightningElement, track } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import MESSAGING_END_USER_OBJECT from '@salesforce/schema/MessagingEndUser';
//import createMessagingUser from '@salesforce/apex/CreateMessagingUserController.createMessagingUser';

export default class CreateMessagingUser extends LightningElement {
    messagingEndUserObject = MESSAGING_END_USER_OBJECT;
    @track messagingPlatformKey = '';
    @track name = '';

    handlePlatformKeyChange(event) {
        const value = event.target.value;
        const isValid = /^[0-9]*$/.test(value);
        if (!isValid) {
            this.dispatchEvent(
                new ShowToastEvent({
                    title: 'Error',
                    message: 'O campo "Messaging Platform Key" deve conter apenas números.',
                    variant: 'error',
                })
            );
            event.target.value = '';
        } else {
            this.messagingPlatformKey = value;
        }
    }

    handleNameChange(event) {
        this.name = event.target.value;
    }

    handleSuccess(event) {
        this.showToast('Success','Messaging User criado com sucesso!', "success");
        this.handleReset();
    }
    
    handleError(event) {
      this.showToast('Error',"Ocorreu um erro na criação do registro: " + event.detail.message,'error');
    }

    showToast(title,message,variant){
     const toastEvent = new ShowToastEvent({
            title,
            message,
            variant
        });
        this.dispatchEvent(toastEvent);
    }

    handleReset() {
        const fieldsToReset = ['Name', 'MessagingPlatformKey'];
        const inputFields = this.template.querySelectorAll('lightning-input-field');
        inputFields.forEach(field => {
            if (fieldsToReset.includes(field.fieldName)) {
                field.reset();
            }
        });
    }

    handleSave(event) {
        event.preventDefault();


        createMessagingUser({
            name: this.name,
            messagingPlatformKey: this.messagingPlatformKey
        })
        .then(result => {

            if (result === 'success') {
                this.dispatchEvent(
                    new ShowToastEvent({
                        title: 'Success',
                        message: 'Messaging User criado com sucesso!',
                        variant: 'success',
                    })
                );
                this.handleReset();
            }
        })
        .catch(error => {
            console.error('Apex method error:', error);
            this.dispatchEvent(
                new ShowToastEvent({
                    title: 'Error',
                    message: 'Ocorreu um erro na criação do registro: ' + error.body.message,
                    variant: 'error',
                })
            );
        });
    }
}