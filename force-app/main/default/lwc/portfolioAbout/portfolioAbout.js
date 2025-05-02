import { LightningElement } from 'lwc';
//import PROFILE_IMAGE from '@salesforce/resourceUrl/profileImage';
//import ADMIN_CERT from '@salesforce/resourceUrl/adminCertification';
//import APP_BUILDER_CERT from '@salesforce/resourceUrl/appBuilderCertification';
//import CONSULTANT_CERT from '@salesforce/resourceUrl/consultantCertification';

export default class PortfolioAbout extends LightningElement {
    profileImage = PROFILE_IMAGE;
    
    biography = `Com mais de 4 anos de experiência como Analista Funcional e Administrador Salesforce, tenho contribuído para a transformação digital de diversas empresas através da implementação e otimização das plataformas Sales Cloud e Service Cloud. Minha trajetória inclui atuação em consultorias de referência no mercado, onde participei de implementações completas para clientes de diferentes segmentos, e atualmente atuo como SysAdmin responsável pela sustentação das operações de vendas e atendimento de uma das maiores empresas do Brasil.

    Minha abordagem combina conhecimento técnico aprofundado com visão estratégica de negócios, permitindo a criação de soluções que realmente impactam os resultados das organizações. Além do domínio das ferramentas standard do Salesforce, venho expandindo minhas competências para o desenvolvimento com Lightning Web Components (LWC) e Apex, criando experiências personalizadas e altamente eficientes.`;
    
    certifications = [
        { id: 1, name: 'Salesforce Certified Administrator', imageUrl: ADMIN_CERT },
        { id: 2, name: 'Salesforce Certified Platform App Builder', imageUrl: APP_BUILDER_CERT },
        { id: 3, name: 'Salesforce Certified Sales Cloud Consultant', imageUrl: CONSULTANT_CERT }
    ];
    
    professionalValues = [
        'Excelência técnica e aprendizado contínuo',
        'Foco em soluções orientadas a resultados de negócio',
        'Comunicação clara e colaboração efetiva',
        'Inovação responsável e boas práticas',
        'Compromisso com a experiência do usuário final'
    ];
}