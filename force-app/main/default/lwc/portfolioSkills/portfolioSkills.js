import { LightningElement } from 'lwc';

export default class PortfolioSkills extends LightningElement {
    skillCategories = [
        {
            id: 'admin',
            name: 'Administração Salesforce',
            skills: [
                { id: 'config', name: 'Configuração Avançada', percentage: 95, progressStyle: 'width: 95%' },
                { id: 'security', name: 'Segurança e Compartilhamento', percentage: 90, progressStyle: 'width: 90%' },
                { id: 'datamanagement', name: 'Gestão de Dados', percentage: 88, progressStyle: 'width: 88%' }
            ]
        },
        {
            id: 'salescloud',
            name: 'Sales Cloud',
            skills: [
                { id: 'sales', name: 'Processos de Vendas', percentage: 92, progressStyle: 'width: 92%' },
                { id: 'forecasting', name: 'Previsões e Territórios', percentage: 85, progressStyle: 'width: 85%' },
                { id: 'campaigns', name: 'Campanhas e Leads', percentage: 90, progressStyle: 'width: 90%' }
            ]
        },
        {
            id: 'servicecloud',
            name: 'Service Cloud',
            skills: [
                { id: 'console', name: 'Console de Serviço', percentage: 95, progressStyle: 'width: 95%' },
                { id: 'cases', name: 'Gestão de Casos', percentage: 95, progressStyle: 'width: 95%' },
                { id: 'knowledge', name: 'Base de Conhecimento', percentage: 90, progressStyle: 'width: 90%' }
            ]
        },
        {
            id: 'einstein',
            name: 'Einstein e Automação',
            skills: [
                { id: 'chatbots', name: 'Einstein Chatbots', percentage: 85, progressStyle: 'width: 85%' },
                { id: 'flow', name: 'Flow Builder', percentage: 85, progressStyle: 'width: 85%' },
                { id: 'processbuilder', name: 'Process Builder', percentage: 90, progressStyle: 'width: 90%' }
            ]
        },
        {
            id: 'development',
            name: 'Desenvolvimento',
            skills: [
                { id: 'lwc', name: 'Lightning Web Components', percentage: 65, progressStyle: 'width: 65%' },
                { id: 'apex', name: 'Apex', percentage: 55, progressStyle: 'width: 55%' },
                { id: 'api', name: 'APIs Salesforce', percentage: 70, progressStyle: 'width: 70%' }
            ]
        }
    ];
}