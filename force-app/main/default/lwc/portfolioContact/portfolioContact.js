import { LightningElement, track } from 'lwc';
//import RESUME_PDF from '@salesforce/resourceUrl/resumePdf';

export default class PortfolioContact extends LightningElement {
    contactMessage = 'Estou sempre aberto a discutir novos projetos, oportunidades de carreira ou simplesmente trocar ideias sobre o ecossistema Salesforce. Sinta-se à vontade para entrar em contato através dos canais abaixo ou preencher o formulário.';
    email = 'seu-email@exemplo.com';
    phone = '(00) 00000-0000';
    linkedInUrl = 'https://linkedin.com/in/seuperfil';
    trailblazerUrl = 'https://trailblazer.me/id/seuperfil';
    resumeUrl = RESUME_PDF;
    
    @track formData = {
        name: '',
        email: '',
        message: ''
    };
    
    @track showSuccess = false;
    
    handleInputChange(event) {
        const { name, value } = event.target;
        this.formData = { ...this.formData, [name]: value };
    }
    
    handleSubmit() {
        // Em um ambiente real, você adicionaria aqui a lógica para enviar a mensagem
        // Usando Apex ou integrações externas
        
        // Simulando envio bem-sucedido
        this.showSuccess = true;
        
        // Resetando o formulário
        this.template.querySelectorAll('lightning-input, lightning-textarea').forEach(element => {
            element.value = '';
        });
        
        this.formData = {
            name: '',
            email: '',
            message: ''
        };
        
        // Ocultando a mensagem de sucesso após 5 segundos
        setTimeout(() => {
            this.showSuccess = false;
        }, 5000);
    }
}