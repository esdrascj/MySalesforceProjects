public with sharing class CustomTicketListViewController {

    private static List<Case> queryCases(String additionalFilter, Integer limitRows, String orderByField, String orderDirection) {
        String query = 'SELECT Id, AccountId, Account.Name, CaseNumber, ContactId, Contact.Name, Contract__r.totalAmount__c, CreatedDate, OwnerId, Owner.Name, Priority, Product__c, Status, Subject FROM Case';
        
        if (additionalFilter != null) {
            query += ' WHERE ' + additionalFilter;
        }

        if (orderByField != null) {
            query += ' ORDER BY ' + orderByField;
            if (orderDirection != null) {
                query += ' ' + orderDirection;
            }
        } else {
            query += ' ORDER BY CreatedDate DESC';
        }

        if (limitRows != null) {
            query += ' LIMIT ' + limitRows;
        }
        return Database.query(query);
    }

    @AuraEnabled(cacheable=true)
    public static List<Case> getCases() {
        Group queue = [SELECT Id FROM Group WHERE DeveloperName = 'TicketsSavers' AND Type = 'Queue' LIMIT 1];
        if (queue == null) {
            throw new AuraHandledException('A fila "Tickets Savers" não foi encontrada.');
        }
        String additionalFilter = 'OwnerId = \'' + String.escapeSingleQuotes(queue.Id) + '\'';
        return queryCases(additionalFilter, null, null, null);
    }

    @AuraEnabled(cacheable=true)
    public static List<Case> getMyCases(String status) {
        Id currentUserId = UserInfo.getUserId();
        String additionalFilter = 'OwnerId = \'' + String.escapeSingleQuotes(currentUserId) + '\'';
        if (!String.isBlank(status)) {
            additionalFilter += ' AND Status = \'' + String.escapeSingleQuotes(status) + '\'';
        }
        return queryCases(additionalFilter, null, null, null);
    }

    @AuraEnabled(cacheable=true)
    public static List<String> getStatusPicklistValues() {
        List<String> picklistValues = new List<String>();
        Schema.DescribeFieldResult statusField = Case.Status.getDescribe();
        for (Schema.PicklistEntry entry : statusField.getPicklistValues()) {
            picklistValues.add(entry.getLabel());
        }
        return picklistValues;
    }

    @AuraEnabled(cacheable=true)
    public static List<RecordType> getCaseRecordTypes() {
        return [SELECT Id, Name FROM RecordType WHERE SObjectType = 'Case' AND IsActive = true];
    }

    @AuraEnabled(cacheable=true)
    public static List<Case> searchTicket(String searchString) {
        Id currentUserId = UserInfo.getUserId();
        if (String.isBlank(searchString)) {
            String additionalFilter = 'OwnerId = \'' + String.escapeSingleQuotes(currentUserId) + '\'';
            return queryCases(additionalFilter, null, null, null);
        }
        List<List<SObject>> searchResults = [FIND :searchString IN ALL FIELDS RETURNING Case(
            Id, AccountId, Account.Name, CaseNumber, ContactId, Contact.Name, CreatedDate, OwnerId, Owner.Name, Priority, Status, Subject
        WHERE OwnerId = :currentUserId)];
        return (searchResults != null && !searchResults.isEmpty()) ? (List<Case>) searchResults[0] : new List<Case>();
    }
    
}