// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class PromotionChangeEvent {
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
    global Campaign Campaign;
    global Id CampaignId;
    global String Description;
    global String Objective;
    global Boolean IsActive;
    global String DisplayName;
    /* Enter the maximum number of times this promotion can apply to a cart. The default value is 1.
    */
    global Integer MaximumUsageCount;
    global Integer PriorityNumber;
    global Boolean IsAutomatic;
    global Datetime StartDateTime;
    global Datetime EndDateTime;
    /* To combine the promotion with other promotions, select No. To prevent combining the promotion with promotions of the same class, select Class. To let it be the only promotion used for an entire order, select Global.
    */
    global String ExclusivityType;
    global Boolean IsCommercePromotion;
    /* This setting is permanent and can't be changed after the promotion is saved. Create a new promotion instead.
    */
    global Boolean IsTiered;
    global String TermsAndConditions;
    /* Define whether a cart must meet the criteria for any qualifier or all qualifiers
    */
    global String QualifierCriteria;
    global Boolean IsQualCriteriaNotRequiredPerApplication;

    global PromotionChangeEvent () 
    {
    }
}