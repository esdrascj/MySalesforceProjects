// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class FulfillmentOrderLineItemChangeEvent {
    global Id Id;
    global String ReplayId;
    global Object ChangeEventHeader;
    global String FulfillmentOrderLineItemNumber;
    global Datetime CreatedDate;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime LastModifiedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global FulfillmentOrder FulfillmentOrder;
    global Id FulfillmentOrderId;
    global OrderItem OrderItem;
    global Id OrderItemId;
    global String Description;
    global Double Quantity;
    global Double OriginalQuantity;
    global String QuantityUnitOfMeasure;
    global Decimal TotalPrice;
    global Decimal TotalLineAmount;
    global Decimal TotalAdjustmentAmount;
    global Decimal TotalAdjustmentTaxAmount;
    global Decimal TotalLineTaxAmount;
    global Decimal TotalTaxAmount;
    global Decimal TotalAmount;
    global Decimal UnitPrice;
    global Datetime ServiceDate;
    global Datetime EndDate;
    global Product2 Product2;
    global Id Product2Id;
    global Decimal GrossUnitPrice;
    global Decimal TotalLineAmountWithTax;
    global Decimal TotalAdjustmentAmountWithTax;
    global Boolean IsReship;
    global String ReshipReason;
    global String RejectReason;
    global Double RejectedQuantity;

    global FulfillmentOrderLineItemChangeEvent () 
    {
    }
}