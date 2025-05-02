import { LightningElement } from 'lwc';
//import PROJECT1_IMAGE from '@salesforce/resourceUrl/project1Image';
//import PROJECT2_IMAGE from '@salesforce/resourceUrl/project2Image';
//import PROJECT3_IMAGE from '@salesforce/resourceUrl/project3Image';

export default class PortfolioProjects extends LightningElement {
    projects = [
        {
            id: 'project1',
            name: 'Implementação de Sales Cloud para Empresa do Setor Financeiro',
            tags: ['Sales Cloud', 'Automação', 'Integração'],
            description: 'Liderei a implementação do Sales Cloud para uma empresa de crédito, estabelecendo um processo completo desde a captação de leads até o fechamento de negócios, com automações e integrações personalizadas.',
            results: [
                'Redução de 40% no ciclo de vendas',
                'Aumento de 25% na taxa de conversão de leads',
                'Visibilidade completa da pipeline e previsões de vendas precisas',
                'Integração com sistemas legados de análise de crédito'
            ],
            imageUrl: PROJECT1_IMAGE
        },
        {
            id: 'project2',
            name: 'Otimização de Service Cloud com Einstein Chatbots',
            tags: ['Service Cloud', 'Einstein', 'Chatbots', 'Omnichannel'],
            description: 'Implementei uma solução de atendimento omnichannel com Einstein Chatbots para uma empresa de varejo, garantindo atendimento eficiente e personalizado em múltiplos canais.',
            results: [
                'Automação de 60% dos atendimentos de primeiro nível',
                'Redução de 30% no custo de atendimento',
                'Aumento de 20% na satisfação dos clientes',
                'Integração com sistema de e-commerce para consulta de pedidos'
            ],
            imageUrl: PROJECT2_IMAGE
        },
        {
            id: 'project3',
            name: 'Desenvolvimento de Componentes LWC para Dashboard Gerencial',
            tags: ['LWC', 'Apex', 'Dashboards', 'Análise de Dados'],
            description: 'Criei componentes Lightning Web Components personalizados para um dashboard gerencial, oferecendo visualização em tempo real de KPIs e métricas críticas para a tomada de decisão.',
            results: [
                'Visualização em tempo real de KPIs de vendas e atendimento',
                'Filtros dinâmicos para análise granular de dados',
                'Interface responsiva e intuitiva',
                'Redução de 70% no tempo para geração de relatórios estratégicos'
            ],
            imageUrl: PROJECT3_IMAGE
        }
    ];
}