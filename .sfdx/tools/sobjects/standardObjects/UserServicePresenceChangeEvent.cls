// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class UserServicePresenceChangeEvent {
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
    global ServicePresenceStatus ServicePresenceStatus;
    global Id ServicePresenceStatusId;
    global Datetime StatusStartDate;
    global Integer ConfiguredCapacity;
    global Datetime StatusEndDate;
    global Boolean IsAway;
    global Integer IdleDuration;
    global Integer AtCapacityDuration;
    global Double AverageCapacity;
    global Boolean IsCurrentState;
    global Integer StatusDuration;
    global Integer ConfiguredInterruptCapacity;

    global UserServicePresenceChangeEvent () 
    {
    }
}