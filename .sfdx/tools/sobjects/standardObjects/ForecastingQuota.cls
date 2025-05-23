// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class ForecastingQuota {
    global Id Id;
    global Period Period;
    global Id PeriodId;
    global Date StartDate;
    global String ProductFamily;
    global Decimal QuotaAmount;
    global Double QuotaQuantity;
    global User QuotaOwner;
    global Id QuotaOwnerId;
    global Boolean IsQuantity;
    global Boolean IsAmount;
    global Datetime CreatedDate;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime LastModifiedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime SystemModstamp;
    global ForecastingType ForecastingType;
    global Id ForecastingTypeId;
    global List<FlowExecutionErrorEvent> ContextRecord;
    global List<FlowRecordRelation> RelatedRecord;

    global ForecastingQuota () 
    {
    }
}