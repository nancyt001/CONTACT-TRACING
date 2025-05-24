// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class Review__ChangeEvent {
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
    global Job_Application__c Job_Application__c;
    global String Position__c;
    global String Candidate_Name__c;
    global String Candidate_Link__c;
    global String Position_link__c;
    global String Assessment__c;
    /* Enter a 1-5 rating of the candidate
    */
    global Double Rating__c;

    global Review__ChangeEvent () 
    {
    }
}