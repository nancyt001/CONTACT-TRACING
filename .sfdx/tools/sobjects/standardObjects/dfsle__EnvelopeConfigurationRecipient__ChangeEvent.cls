// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class dfsle__EnvelopeConfigurationRecipient__ChangeEvent {
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
    global dfsle__EnvelopeConfiguration__c dfsle__EnvelopeConfiguration__c;
    /* Access Code
    */
    global String dfsle__AccessCode__c;
    global Boolean dfsle__DeliverBySms__c;
    global String dfsle__EmailMessage__c;
    global String dfsle__EmailSubject__c;
    global String dfsle__Email__c;
    global String dfsle__Filter__c;
    global String dfsle__HostEmail__c;
    global String dfsle__HostName__c;
    global Boolean dfsle__IdCheckRequired__c;
    global Boolean dfsle__IncrementRoutingOrder__c;
    global Boolean dfsle__IsSender__c;
    global String dfsle__Language__c;
    global String dfsle__Name__c;
    global String dfsle__Note__c;
    global Boolean dfsle__ReadOnly__c;
    global String dfsle__Relationship__c;
    global Boolean dfsle__Required__c;
    global String dfsle__Roles__c;
    /* Routing Order
    */
    global Double dfsle__RoutingOrder__c;
    global Double dfsle__Sequence__c;
    global Boolean dfsle__SignNow__c;
    /* Signing Group ID
    */
    global Double dfsle__SigningGroupId__c;
    global String dfsle__SigningGroupName__c;
    global String dfsle__SmsPhoneNumber__c;
    global String dfsle__SourceId__c;
    /* Type
    */
    global String dfsle__Type__c;

    global dfsle__EnvelopeConfigurationRecipient__ChangeEvent () 
    {
    }
}