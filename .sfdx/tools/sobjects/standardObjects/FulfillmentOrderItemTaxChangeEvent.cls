// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class FulfillmentOrderItemTaxChangeEvent {
    global Id Id;
    global String ReplayId;
    global Object ChangeEventHeader;
    global String FulfillmentOrderItemTaxNumber;
    global Datetime CreatedDate;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime LastModifiedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global FulfillmentOrderLineItem FulfillmentOrderLineItem;
    global Id FulfillmentOrderLineItemId;
    global FulfillmentOrder FulfillmentOrder;
    global Id FulfillmentOrderId;
    global FulfillmentOrderItemAdjustment FulfillmentOrderItemAdjust;
    global Id FulfillmentOrderItemAdjustId;
    global String Type;
    global Decimal Amount;
    global String Description;
    global Double Rate;
    global Date TaxEffectiveDate;

    global FulfillmentOrderItemTaxChangeEvent () 
    {
    }
}