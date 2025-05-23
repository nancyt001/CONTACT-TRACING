// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class ForecastingItem {
    global Id Id;
    global User Owner;
    global Id OwnerId;
    global Period Period;
    global Id PeriodId;
    global String ForecastingItemCategory;
    global String ForecastCategoryName;
    global ForecastingItem ParentForecastingItem;
    global Id ParentForecastingItemId;
    global String ProductFamily;
    global Decimal OwnerOnlyAmount;
    global Decimal AmountWithoutAdjustments;
    global Decimal AmountWithoutManagerAdjustment;
    global Decimal ForecastAmount;
    global Decimal AmountWithoutOwnerAdjustment;
    global Double OwnerOnlyQuantity;
    global Double QuantityWithoutAdjustments;
    global Double QuantityWithoutManagerAdjustment;
    global Double ForecastQuantity;
    global Double QuantityWithoutOwnerAdjustment;
    global Boolean IsQuantity;
    global Boolean IsAmount;
    global Boolean HasAdjustment;
    global Boolean HasOwnerAdjustment;
    global Boolean IsUpToDate;
    global Datetime SystemModstamp;
    global ForecastingType ForecastingType;
    global Id ForecastingTypeId;
    global Integer SubordinateOverrides;
    global List<ForecastingFact> ForecastingFacts;
    global List<FlowExecutionErrorEvent> ContextRecord;
    global List<FlowRecordRelation> RelatedRecord;
    global List<ForecastingAdjustment> ForecastingItem;
    global List<ForecastingItem> ParentForecastingItem;
    global List<ForecastingOwnerAdjustment> ForecastingItem;

    global ForecastingItem () 
    {
    }
}