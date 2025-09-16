// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class PendingServiceRoutingChangeEvent {
    global Id Id;
    global String ReplayId;
    global Object ChangeEventHeader;
    global User Owner;
    global Id OwnerId;
    global String Name;
    global Datetime CreatedDate;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime LastModifiedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global SObject WorkItem;
    global Id WorkItemId;
    global Group Queue;
    global Id QueueId;
    global Boolean IsPushAttempted;
    global ServiceChannel ServiceChannel;
    global Id ServiceChannelId;
    global Boolean IsPushed;
    global Integer Serial;
    global String LastDeclinedAgentSession;
    global Boolean IsTransfer;
    global String RoutingModel;
    global Datetime CustomRequestedDateTime;
    global Integer RoutingPriority;
    global String RoutingType;
    global Boolean IsReadyForRouting;
    global Double CapacityWeight;
    global Double CapacityPercentage;
    global Integer PushTimeout;
    global User PreferredUser;
    global Id PreferredUserId;
    global Integer DropAdditionalSkillsTimeout;
    global Group Group;
    global Id GroupId;
    global Boolean IsPreferredUserRequired;
    global Boolean IsInterruptible;
    global Double PausedCapacityWeight;
    global Double PausedCapacityPercentage;
    global User TransferRequester;
    global Id TransferRequesterId;

    global PendingServiceRoutingChangeEvent () 
    {
    }
}