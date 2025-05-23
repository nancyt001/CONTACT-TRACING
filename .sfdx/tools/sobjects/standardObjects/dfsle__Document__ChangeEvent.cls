// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class dfsle__Document__ChangeEvent {
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
    /* Envelope
    */
    global dfsle__Envelope__c dfsle__Envelope__c;
    global String dfsle__Extension__c;
    global String dfsle__FullName__c;
    global Boolean dfsle__IsReplacement__c;
    /* Source Last Modified
    */
    global Datetime dfsle__LastModified__c;
    global String dfsle__Options__c;
    global Boolean dfsle__ReadOnly__c;
    /* Replacement document
    */
    global dfsle__Document__c dfsle__Replacement__c;
    global Boolean dfsle__Required__c;
    global Double dfsle__Sequence__c;
    /* Document Size
    */
    global Double dfsle__Size__c;
    global String dfsle__SourceId__c;
    /* Document Type
    */
    global String dfsle__Type__c;

    global dfsle__Document__ChangeEvent () 
    {
    }
}