// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class dfsle__Envelope__ChangeEvent {
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
    global String dfsle__CustomFields__c;
    global String dfsle__DFSTemplateId__c;
    global String dfsle__DocuSignId__c;
    /* Edit this email message Text (up to 10,000 characters) and it will appear in the notification to sign for
			your DocuSign Recipient.
    */
    global String dfsle__EmailMessage__c;
    /* Change this default email subject text and it will appear as the Subject Line in the notification to Sign
			for your DocuSign Recipients.
    */
    global String dfsle__EmailSubject__c;
    /* The configuration used to generate this envelope.
    */
    global dfsle__EnvelopeConfiguration__c dfsle__EnvelopeConfiguration__c;
    /* Indicate the number of days until this transaction is expired.
    */
    global Double dfsle__ExpireAfterDays__c;
    /* Indicate how many days prior to expiration you want an email message to alert recipients that a deadline
			approaches for completion. This is sent only to recipients who have not yet completed the transaction.
    */
    global Double dfsle__ExpireWarnDays__c;
    /* At times, you may need to encourage your recipients to complete an envelope more rapidly. After an envelope expires, DocuSign voids the envelope and sends a notification to both sender and recipient.
    */
    global Boolean dfsle__Expires__c;
    global String dfsle__Options__c;
    /* Indicate how many days should pass before the first reminder is sent
    */
    global Double dfsle__RemindAfterDays__c;
    /* Indicate how often (in days) the reminder should repeat until the transaction is complete.
    */
    global Double dfsle__RemindFrequencyDays__c;
    /* Check this box to have an email reminder sent to recipients of the envelope who have not yet completed
			their task.
    */
    global Boolean dfsle__Remind__c;
    global String dfsle__SenderPermissions__c;
    global User dfsle__Sender__c;
    /* Date and time sent
    */
    global Datetime dfsle__Sent__c;
    /* Salesforce source ID
    */
    global String dfsle__SourceId__c;
    global String dfsle__TransactionId__c;
    /* Check to show chatter during DocuSign signature workflow.
    */
    global Boolean dfsle__UpdateChatter__c;

    global dfsle__Envelope__ChangeEvent () 
    {
    }
}