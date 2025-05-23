// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class ForecastingUserPreference {
    global Id Id;
    global String ExternalId;
    global Integer ForecastingStartPeriod;
    global Integer ForecastingPeriodDuration;
    global String ForecastingPeriodType;
    global ForecastingType ForecastingDisplayedType;
    global Id ForecastingDisplayedTypeId;
    global String ForecastingViewCurrency;
    global Boolean IsHideForecastingGuidedTour;
    global Boolean IsShowForecastingQuotaAttainment;
    global Boolean IsHideForecastingQuotaColumn;
    global Boolean IsForecastingShowQuantity;
    global Boolean IsForecastingHideZeroRows;

    global ForecastingUserPreference () 
    {
    }
}