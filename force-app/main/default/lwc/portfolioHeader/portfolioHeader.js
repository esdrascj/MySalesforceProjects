import { LightningElement } from 'lwc';

export default class PortfolioHeader extends LightningElement {
    fullName = 'Seu Nome';
    title = 'Especialista em Soluções Salesforce';
    
    navItems = [
        { id: 'about', label: 'Sobre Mim', href: '#about' },
        { id: 'experience', label: 'Experiência', href: '#experience' },
        { id: 'skills', label: 'Habilidades', href: '#skills' },
        { id: 'projects', label: 'Projetos', href: '#projects' },
        { id: 'testimonials', label: 'Depoimentos', href: '#testimonials' },
        { id: 'contact', label: 'Contato', href: '#contact' }
    ];
    
    socialLinks = [
        { id: 'linkedin', label: 'LinkedIn', icon: 'utility:share', url: 'https://linkedin.com/in/seuperfil' },
        { id: 'trailhead', label: 'Trailhead', icon: 'utility:trail', url: 'https://trailblazer.me/id/seuperfil' },
        { id: 'github', label: 'GitHub', icon: 'utility:repository', url: 'https://github.com/seuperfil' }
    ];
    
    handleNavClick(event) {
        event.preventDefault();
        const sectionId = event.currentTarget.getAttribute('href').substring(1);
        const section = document.getElementById(sectionId);
        if (section) {
            section.scrollIntoView({ behavior: 'smooth' });
        }
    }
    
    scrollToContact() {
        const contactSection = document.getElementById('contact');
        if (contactSection) {
            contactSection.scrollIntoView({ behavior: 'smooth' });
        }
    }
}