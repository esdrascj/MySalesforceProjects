import { LightningElement, wire, track } from 'lwc';

import getMyCases from '@salesforce/apex/CustomTicketListViewController.getMyCases';
import searchTicket from '@salesforce/apex/CustomTicketListViewController.searchTicket';
import getStatusPicklistValues from "@salesforce/apex/CustomTicketListViewController.getStatusPicklistValues";
import { NavigationMixin } from 'lightning/navigation';

const ACTIONS = [{label: 'Edit', name:'edit'}];
const COLUMNS = [
    { label: 'Número do caso', fieldName: 'CaseLink', type: 'url', typeAttributes: { label: { fieldName: 'CaseNumber' }}},
    { label: 'Nome do Contato', fieldName: 'ContactLink', type: 'url', typeAttributes: { label: { fieldName: 'ContactName' }}},
    { label: 'Assunto', fieldName: 'Subject' },
    { label: 'Status', fieldName: 'Status' },
    { label: 'Data de Criação', fieldName: 'CreatedDate'},
    { label: 'Prioridade', fieldName: 'Priority' },
    { label: 'Product', fieldName: 'Product__c'},
    { label: 'MRR', fieldName: 'ContractTotalAmount__c', type: 'number'},
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

    @track statusOptions = [];
    selectedStatus = '';

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

    @wire(getStatusPicklistValues)
    wiredStatusValues({ data, error }) {
        if (data) {
            this.statusOptions = data.map(value => ({ label: value, value: value }));
        } else if (error) {
            console.error('Erro ao buscar os valores do Status:', error);
        }
    }

    handleStatusChange(event) {
        this.selectedStatus = event.detail.value;
    
        if (!this.selectedStatus) {
            getMyCases({ status: null })
                .then(result => {
                    this.records = result.map(row => this.mapTickets(row));
                })
                .catch(error => {
                    console.error('Erro ao carregar tickets do usuário:', error);
                });
        } else {
            getMyCases({ status: this.selectedStatus })
                .then(result => {
                    this.records = result.map(row => this.mapTickets(row));
                })
                .catch(error => {
                    console.error('Erro ao filtrar tickets do usuário:', error);
                });
        }
    }
    
    @wire(getMyCases)
        wiredGetMyCases(result) {
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

        handleSearch(event) {
            const searchString = event.target.value;
            searchTicket({ searchString })
                .then(result => {
                    this.records = result.map(row => this.mapTickets(row));
                })
                .catch(error => {
                    console.error('Erro ao realizar a pesquisa:', error);
                });
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
            ContractTotalAmount__c: row.Contract__r ? row.Contract__r.totalAmount__c : null,
            CreatedDate: formattedDateTime,
            OwnerNameLink: row.OwnerId ? `/${row.OwnerId}` : '',
            OwnerName: row.Owner ? row.Owner.Name : 'N/A',
            
        };
    }

}