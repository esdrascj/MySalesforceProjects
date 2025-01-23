import { LightningElement, wire} from 'lwc';
import getCases from '@salesforce/apex/CustomTicketListViewController.getCases';
import { NavigationMixin } from 'lightning/navigation';

const ACTIONS = [{label: 'Edit', name:'edit'}];
const COLUMNS = [
    { label: 'Número do caso', fieldName: 'CaseLink', type: 'url', typeAttributes: { label: { fieldName: 'CaseNumber' }}},
    { label: 'Nome do Contato', fieldName: 'ContactLink', type: 'url', typeAttributes: { label: { fieldName: 'ContactName' }}},
    { label: 'Assunto', fieldName: 'Subject' },
    { label: 'Status', fieldName: 'Status' },
    { label: 'Data de Criação', fieldName: 'CreatedDate'},
    { label: 'Prioridade', fieldName: 'Priority' },
    { label: 'Proprietário do Caso', fieldName: 'OwnerNameLink', type: 'url', typeAttributes: { label: { fieldName: 'OwnerName' }}},
    { fieldName: 'actions', type: 'action', typeAttributes: { rowActions: ACTIONS }},
];

export default class ClientSidePaginationCustomTicketListView extends NavigationMixin(LightningElement) {
    columns = COLUMNS;
    isLoading = true;
    records = [];
    baseData = [];

    pageSize = 10;
    pageNumber = 1;
    totalRecords = 0;
    enablePagination = true;

    get hasRecords() {
        return this.records.length > 0;
    }

    get recordsToDisplay() {
        let from = (this.pageNumber - 1) * this.pageSize,
            to = this.pageSize * this.pageNumber;
        return this.records?.slice(from, to);
    }

    get showPaginator() {
        return this.enablePagination && this.hasRecords;
    }

    @wire(getCases)
        wiredGetCases(result) {
            if (result?.data) {
                this.isLoading = false;
                const mappedData = result.data.map(this.mapTickets);
                this.records = mappedData; 
                this.baseData = [...mappedData];
                this.totalRecords = this.records.length;
            }
            if (result?.error) {
                this.isLoading = false;
                console.error('Erro ao buscar os tickets:', result.error);
            }
        }

    paginationChangeHandler(event) {
        if (event.detail) {
            this.pageNumber = event.detail.pageNumber;
            this.pageSize = event.detail.pageSize;
        }
    }

    handleRowAction(event) {
        const recordId = event.detail.row.Id;
        this[NavigationMixin.Navigate]({
            type: 'standard__recordPage',
            attributes: {
                recordId: recordId,
                objectApiName: 'Case',
                actionName: 'edit'
            }
        });
    }

    mapTickets(row) {
        const formattedDateTime = row.CreatedDate
            ? new Intl.DateTimeFormat('pt-BR', {
                  dateStyle: 'short',
                  timeStyle: 'medium',
              })
                  .format(new Date(row.CreatedDate))
                  .replace(',', '')
            : 'N/A';
    
        return {
            ...row,
            CaseLink: row.Id ? `/${row.Id}` : '',
            ContactLink: row.ContactId ? `/${row.ContactId}` : '',
            ContactName: row.Contact ? row.Contact.Name : 'N/A',
            OwnerNameLink: row.OwnerId ? `/${row.OwnerId}` : '',
            OwnerName: row.Owner ? row.Owner.Name : 'N/A',
            CreatedDate: formattedDateTime,
        };
    }

}