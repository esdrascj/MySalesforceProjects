@isTest
public class CustomTicketListViewControllerTest {
    private static void setupTestData() {
        Group queue = [SELECT Id FROM Group WHERE DeveloperName = 'TicketsSavers' AND Type = 'Queue' LIMIT 1];
        System.assert(queue != null, 'A fila "TicketsSavers" não foi encontrada.');

        Case case1 = new Case(
            OwnerId = queue.Id,
            Subject = 'Test Case 1',
            Status = 'Open'
        );
        Case case2 = new Case(
            OwnerId = UserInfo.getUserId(),
            Subject = 'Test Case 2',
            Status = 'Open'
        );
        Case case3 = new Case(
            OwnerId = UserInfo.getUserId(),
            Subject = 'Test Case 3',
            Status = 'Closed'
        );
        insert new List<Case>{ case1, case2, case3 };
    }
    
    @isTest
    static void testGetCases() {
        setupTestData();

        Group queue = [SELECT Id, DeveloperName FROM Group WHERE DeveloperName = 'TicketsSavers' AND Type = 'Queue' LIMIT 1];
        System.assertNotEquals(null, queue, 'A fila "TicketsSavers" não foi encontrada.');

        Case testCase = new Case(
            OwnerId = queue.Id,
            Subject = 'Caso para teste',
            Status = 'Open'
        );
        insert testCase;

        List<Case> cases = CustomTicketListViewController.getCases();
        System.assertNotEquals(0, cases.size(), 'A lista de casos atribuídos à fila "TicketsSavers" não deve estar vazia.');
        System.assertEquals(queue.Id, cases[0].OwnerId, 'O OwnerId do caso deve ser a fila "TicketsSavers".');
    }
    

    @isTest
    static void testGetMyCases() {
        setupTestData();

        List<Case> myCases = CustomTicketListViewController.getMyCases('Open');

        System.assertNotEquals(0, myCases.size(), 'A lista de casos atribuídos ao usuário não deve estar vazia.');
        System.assertEquals('Open', myCases[0].Status, 'O status do caso deve ser "Open".');
    }

    @isTest
    static void testGetStatusPicklistValues() {
        List<String> picklistValues = CustomTicketListViewController.getStatusPicklistValues();
        System.assert(picklistValues.size() > 0, 'Deve retornar pelo menos um valor de picklist.');
    }

    @IsTest
    static void testGetCaseRecordTypes() {
        Test.startTest();

        List<RecordType> recordTypes = CustomTicketListViewController.getCaseRecordTypes();
        Test.stopTest();

        System.assert(recordTypes != null, 'Tipos de registro não devem ser nulos');
        System.assert(recordTypes.size() > 0, 'Devem haver tipos de registro ativos');
    }

    @isTest
    static void testSearchTicketEmpty() {
        setupTestData();
        List<Case> searchResults = CustomTicketListViewController.searchTicket('');

        System.assertNotEquals(0, searchResults.size(), 'Deve retornar casos ao realizar busca com string vazia.');
    }
}
