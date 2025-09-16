// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class FulfillmentOrderChangeEvent {
    global Id Id;
    global String ReplayId;
    global Object ChangeEventHeader;
    global User Owner;
    global Id OwnerId;
    global String FulfillmentOrderNumber;
    global Datetime CreatedDate;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime LastModifiedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Account Account;
    global Id AccountId;
    global Location FulfilledFromLocation;
    global Id FulfilledFromLocationId;
    global String FulfilledToName;
    global String FulfilledToStreet;
    global String FulfilledToCity;
    global String FulfilledToState;
    global String FulfilledToPostalCode;
    global String FulfilledToCountry;
    global Double FulfilledToLatitude;
    global Double FulfilledToLongitude;
    global String FulfilledToGeocodeAccuracy;
    global Address FulfilledToAddress;
    global String FulfilledToEmailAddress;
    global String FulfilledToPhone;
    global Double ItemCount;
    global String Status;
    global String StatusCategory;
    global String Type;
    global String TypeCategory;
    global Decimal TotalProductAmount;
    global Decimal TotalAdjustmentAmount;
    global Decimal TotalDeliveryAmount;
    global Decimal TotalProductTaxAmount;
    global Decimal TotalAdjustmentTaxAmount;
    global Decimal TotalDeliveryTaxAmount;
    global Decimal TotalFeeAmount;
    global Decimal TotalFeeTaxAmount;
    global Decimal TotalAmount;
    global Decimal TotalTaxAmount;
    global Order Order;
    global Id OrderId;
    global Invoice Invoice;
    global Id InvoiceId;
    global Decimal GrandTotalAmount;
    global Boolean IsSuspended;
    global Decimal TotalDeliveryAdjustAmount;
    global Decimal TotalDeliveryAdjustTaxAmount;
    global Decimal TotalFeeAdjustAmount;
    global Decimal TotalFeeAdjustTaxAmount;
    global String TaxLocaleType;
    global Contact BillToContact;
    global Id BillToContactId;
    global Decimal TotalProductAmtWithTax;
    global Decimal TotalAdjustmentAmtWithTax;
    global Decimal TotalDeliveryAmtWithTax;
    global Decimal TotalDeliveryAdjustAmtWithTax;
    global Decimal TotalFeeAmtWithTax;
    global Decimal TotalFeeAdjustAmtWithTax;
    global Boolean IsReship;
    global Datetime ActivatedDate;
    global Datetime ClosedDate;

    global FulfillmentOrderChangeEvent () 
    {
    }
}