// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class dfsle__EOS_Type__ChangeEvent {
    global Id Id;
    global String ReplayId;
    global Object ChangeEventHeader;
    global String Name;
    global SObject SetupOwner;
    global Id SetupOwnerId;
    global Datetime CreatedDate;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime LastModifiedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Boolean dfsle__DoNotConvertSpecialCharacters__c;
    /* A field to store the format of the folder name that maps a Salesforce object to a folder in
		SpringCM.
    */
    global String dfsle__FolderNameFormat__c;
    /* A field to store the folder name generated during the object mapping process.
    */
    global String dfsle__FolderName__c;
    global Boolean dfsle__IsLegacyFileIt__c;
    /* A field to store the path format of the folder name that maps a Salesforce object to a folder in
		SpringCM.
    */
    global String dfsle__PathFormat__c;
    /* A field to store the folder path in SpringCM, generated during the object mapping process within
		Salesforce.
    */
    global String dfsle__Path__c;
    /* A field to store the variable folder names.
    */
    global String dfsle__Variables__c;

    global dfsle__EOS_Type__ChangeEvent () 
    {
    }
}