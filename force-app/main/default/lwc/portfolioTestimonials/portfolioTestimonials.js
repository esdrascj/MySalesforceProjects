import { LightningElement, track } from 'lwc';
//import TESTIMONIAL1_IMAGE from '@salesforce/resourceUrl/testimonial1Image';
//import TESTIMONIAL2_IMAGE from '@salesforce/resourceUrl/testimonial2Image';
//import TESTIMONIAL3_IMAGE from '@salesforce/resourceUrl/testimonial3Image';

export default class PortfolioTestimonials extends LightningElement {
    @track activeIndex = 0;
    
    testimonials = [
        {
            id: 'testimonial1',
            quote: 'Seu nome demonstrou excepcional conhecimento técnico e visão estratégica durante a implementação do Salesforce em nossa empresa. Sua capacidade de entender nossos processos de negócio e traduzi-los em soluções eficientes na plataforma foi fundamental para o sucesso do projeto.',
            name: 'Nome do Cliente',
            title: 'Diretor de Tecnologia',
            company: 'Empresa Financeira',
            imageUrl: TESTIMONIAL1_IMAGE
        },
        {
            id: 'testimonial2',
            quote: 'Trabalhar com Seu Nome nos projetos de Salesforce foi uma experiência extremamente positiva. Seu domínio técnico, combinado com habilidades excepcionais de comunicação e resolução de problemas, garantiu entregas de alta qualidade e cumprimento de todos os prazos.',
            name: 'Nome do Colega',
            title: 'Gerente de Projetos',
            company: 'Consultoria XYZ',
            imageUrl: TESTIMONIAL2_IMAGE
        },
        {
            id: 'testimonial3',
            quote: 'A implementação dos Chatbots com Einstein realizada por Seu Nome transformou completamente nossa operação de atendimento. Sua abordagem metodológica e conhecimento aprofundado das capacidades da plataforma nos permitiram alcançar resultados muito além das nossas expectativas iniciais.',
            name: 'Nome do Gestor',
            title: 'Diretor de Atendimento',
            company: 'Empresa de Varejo',
            imageUrl: TESTIMONIAL3_IMAGE
        }
    ];
    
    get activeTestimonial() {
        return this.testimonials[this.activeIndex];
    }
    
    get showPrevious() {
        return this.activeIndex > 0;
    }
    
    get showNext() {
        return this.activeIndex < this.testimonials.length - 1;
    }
    
    getDotsClass(index) {
        return index === this.activeIndex ? 'dot active' : 'dot';
    }
    
    previousTestimonial() {
        if (this.activeIndex > 0) {
            this.activeIndex--;
        }
    }
    
    nextTestimonial() {
        if (this.activeIndex < this.testimonials.length - 1) {
            this.activeIndex++;
        }
    }
    
    goToTestimonial(event) {
        const index = parseInt(event.currentTarget.dataset.index, 10);
        this.activeIndex = index;
    }
}
