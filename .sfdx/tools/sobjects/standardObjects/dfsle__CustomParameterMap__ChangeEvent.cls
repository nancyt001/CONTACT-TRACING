// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class dfsle__CustomParameterMap__ChangeEvent {
    global Id Id;
    global String ReplayId;
    global Object ChangeEventHeader;
    global String Name;
    global Datetime CreatedDate;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime LastModifiedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    /* DocuSign Envelope Configuration
    */
    global dfsle__EnvelopeConfiguration__c dfsle__EnvelopeConfiguration__c;
    global String dfsle__Name__c;
    global Double dfsle__Order__c;
    global String dfsle__SubValue__c;
    global String dfsle__Type__c;
    global String dfsle__Value__c;

    global dfsle__CustomParameterMap__ChangeEvent () 
    {
    }
}