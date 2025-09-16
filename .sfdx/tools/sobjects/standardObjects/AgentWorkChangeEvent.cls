// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class AgentWorkChangeEvent {
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
    global User User;
    global Id UserId;
    global SObject WorkItem;
    global Id WorkItemId;
    global String Status;
    global ServiceChannel ServiceChannel;
    global Id ServiceChannelId;
    global Group OriginalQueue;
    global Id OriginalQueueId;
    global Double CapacityWeight;
    global Double CapacityPercentage;
    global Datetime RequestDateTime;
    global Datetime AcceptDateTime;
    global Datetime DeclineDateTime;
    global Datetime CloseDateTime;
    global Integer SpeedToAnswer;
    global Double AgentCapacityWhenDeclined;
    global PendingServiceRouting PendingServiceRouting;
    global Id PendingServiceRoutingId;
    global Integer PushTimeout;
    global Datetime PushTimeoutDateTime;
    global Integer HandleTime;
    global Integer ActiveTime;
    global String DeclineReason;
    global Datetime CancelDateTime;
    global Boolean ShouldSkipCapacityCheck;
    global String RoutingType;
    global String RoutingModel;
    global Integer RoutingPriority;
    global Datetime AssignedDateTime;
    global User PreferredUser;
    global Id PreferredUserId;
    global Group OriginalGroup;
    global Id OriginalGroupId;
    global Boolean IsPreferredUserRequired;
    global Integer AfterConversationActualTime;
    global Boolean IsInterruptible;
    global Double AgentIntCapacityWhenDeclined;
    global Integer AcwExtensionCount;
    global Integer AcwExtensionDuration;
    global Double PausedCapacityWeight;
    global Double PausedCapacityPercentage;
    global User TransferRequester;
    global Id TransferRequesterId;

    global AgentWorkChangeEvent () 
    {
    }
}