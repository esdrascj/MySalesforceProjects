import { LightningElement } from 'lwc';

export default class PortfolioFooter extends LightningElement {
    fullName = 'Seu Nome';
    title = 'Especialista em Soluções Salesforce';
    
    socialLinks = [
        { id: 'linkedin', icon: 'utility:share', url: 'https://linkedin.com/in/seuperfil' },
        { id: 'trailhead', icon: 'utility:trail', url: 'https://trailblazer.me/id/seuperfil' },
        { id: 'github', icon: 'utility:repository', url: 'https://github.com/seuperfil' }
    ];
    
    get currentYear() {
        return new Date().getFullYear();
    }
}