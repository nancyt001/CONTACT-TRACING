// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class ForecastingFact {
    global Id Id;
    global User Owner;
    global Id OwnerId;
    global Period Period;
    global Id PeriodId;
    global String ForecastCategoryName;
    global Opportunity Opportunity;
    global Id OpportunityId;
    global OpportunityLineItem ForecastedObject;
    global Id ForecastedObjectId;
    global ForecastingItem ForecastingItem;
    global Id ForecastingItemId;
    global Datetime SystemModstamp;
    global ForecastingType ForecastingType;
    global Id ForecastingTypeId;
    global List<FlowExecutionErrorEvent> ContextRecord;
    global List<FlowRecordRelation> RelatedRecord;

    global ForecastingFact () 
    {
    }
}