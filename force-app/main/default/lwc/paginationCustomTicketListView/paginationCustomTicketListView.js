import { LightningElement, wire, track } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';
import getCaseRecordTypes from '@salesforce/apex/CustomTicketListViewController.getCaseRecordTypes';
export default class PaginationCustomTicketListView extends NavigationMixin(LightningElement) {
    @track isModalOpen = false;
    @track recordTypeOptions = [];
    @track selectedRecordTypeId;

    @wire(getCaseRecordTypes)
    wiredRecordTypes({ error, data }) {
        if (data) {
            this.recordTypeOptions = data.map(recordType => ({
                label: recordType.Name,
                value: recordType.Id
            }));
        } else if (error) {
            console.error(error);
        }
    }

    handleOpenModal() {
        this.isModalOpen = true;
    }

    handleCloseModal() {
        this.isModalOpen = false;
    }

    handleRecordTypeChange(event) {
        this.selectedRecordTypeId = event.detail.value;
    }

    navigateToNewRecord() {
        if (this.selectedRecordTypeId) {
            this[NavigationMixin.Navigate]({
                type: 'standard__objectPage',
                attributes: {
                    objectApiName: 'Case',
                    actionName: 'new'
                },
                state: {
                    recordTypeId: this.selectedRecordTypeId
                }
            });
            this.isModalOpen = false;
        } else {
            // Notifica o usuário para selecionar um tipo de registro
            alert('Selecione um tipo de registro antes de continuar.');
        }
    }

    connectedCallback() {
        document.title = 'Tickets Savers';
    }
    
}