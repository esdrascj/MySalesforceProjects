// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class WebStoreInventorySource {
    global Id Id;
    global Boolean IsDeleted;
    global String Name;
    global Datetime CreatedDate;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime LastModifiedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime SystemModstamp;
    global Datetime LastViewedDate;
    global Datetime LastReferencedDate;
    global WebStore WebStore;
    global Id WebStoreId;
    global Boolean IsDefault;
    /* The default location or location group for inventory reservations.
    */
    global SObject LocationSource;
    /* The default location or location group for inventory reservations.
    */
    global Id LocationSourceId;
    global Boolean IsBopisEnabled;
    /* The reservation time limit must be between 300 and 14,400. The default for a new store is 900.
    */
    global Integer ReservationDurationInSeconds;
    global String LocationSourceExtRef;
    /* The inventory stock level used to determine product availability. The default for a new store is Available to Order.
    */
    global String InventoryDimension;
    /* The Inventory Cache Time To Live must be between 300 and 14,400. The default for a new store is 1,440.
    */
    global Integer InventoryCacheTtl;
    global List<ApprovalSubmission> ApprovalSubmissions;
    global List<ApprovalWorkItem> ApprovalWorkItems;
    global List<FlowOrchestrationWorkItem> FlowOrchestrationWorkItems;
    global List<ProcessInstance> ProcessInstances;
    global List<ProcessInstanceHistory> ProcessSteps;
    global List<AIInsightValue> SobjectLookupValue;
    global List<AIRecordInsight> Target;
    global List<FlowExecutionErrorEvent> ContextRecord;
    global List<FlowRecordRelation> RelatedRecord;
    global List<PendingServiceRoutingInteractionInfo> TargetObject;

    global WebStoreInventorySource () 
    {
    }
}