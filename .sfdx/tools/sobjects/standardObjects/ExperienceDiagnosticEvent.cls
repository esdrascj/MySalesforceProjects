// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class ExperienceDiagnosticEvent {
    global String ReplayId;
    global Datetime CreatedDate;
    global User CreatedBy;
    global Id CreatedById;
    global String EventUuid;
    global String EventIdentifier;
    global User User;
    global Id UserId;
    global String Username;
    global Datetime EventDate;
    global String RelatedEventIdentifier;
    global String ServiceName;
    global String Operation;
    global Integer OperationTime;
    global String OperationStatus;
    global String OperationStage;
    global String ContextId;
    global String ContextMap;
    global Integer ResultCount;
    global Integer InputCount;
    global Boolean IsRetry;
    global String ContextId2;
    global String NetworkId;
    global String CorrelationId;
    global String ErrorCode;
    global String ErrorMessage;
    global Integer BrowserDeviceType;
    global Integer OsVersion;
    global List<AsyncOperationEvent> SourceEvent;

    global ExperienceDiagnosticEvent () 
    {
    }
}