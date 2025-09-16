// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class CouponChangeEvent {
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
    global Promotion Promotion;
    global Id PromotionId;
    global String CouponCode;
    global String Status;
    global Datetime StartDateTime;
    global Datetime EndDateTime;
    /* Number of times this coupon can be used in total.
    */
    global Integer RedemptionLimitAllBuyers;
    /* Number of times this coupon can be used per customer.
    */
    global Integer RedemptionLimitPerBuyer;
    global String Description;

    global CouponChangeEvent () 
    {
    }
}