// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class dfsle__BulkStatus__ChangeEvent {
    global Id Id;
    global String ReplayId;
    global Object ChangeEventHeader;
    global SObject Owner;
    global Id OwnerId;
    global String Name;
    global Datetime CreatedDate;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime LastModifiedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Double dfsle__BatchSize__c;
    global String dfsle__DocuSignId__c;
    global Double dfsle__FailedEnvelopes__c;
    global Datetime dfsle__LastStatusUpdate__c;
    global Double dfsle__QueuedEnvelopes__c;
    global Double dfsle__SentEnvelopes__c;
    global String dfsle__SourceId__c;
    global Datetime dfsle__Submitted__c;

    global dfsle__BulkStatus__ChangeEvent () 
    {
    }
}