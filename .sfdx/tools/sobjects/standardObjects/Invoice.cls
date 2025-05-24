// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class Invoice {
    global Id Id;
    global SObject Owner;
    global Id OwnerId;
    global Boolean IsDeleted;
    global String DocumentNumber;
    global Datetime CreatedDate;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime LastModifiedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime SystemModstamp;
    global SObject ReferenceEntity;
    global Id ReferenceEntityId;
    global String InvoiceNumber;
    global Account BillingAccount;
    global Id BillingAccountId;
    global Decimal TotalAmount;
    global Decimal TotalAmountWithTax;
    global Decimal TotalChargeAmount;
    global Decimal TotalAdjustmentAmount;
    global Decimal TotalTaxAmount;
    global String Status;
    global Date InvoiceDate;
    global Date DueDate;
    global Contact BillToContact;
    global Id BillToContactId;
    global String Description;
    global Decimal Balance;
    global List<ActivityHistory> ActivityHistories;
    global List<AttachedContentDocument> AttachedContentDocuments;
    global List<Attachment> Attachments;
    global List<CombinedAttachment> CombinedAttachments;
    global List<ContentDocumentLink> ContentDocumentLinks;
    global List<CreditMemoInvApplication> CreditMemoInvsApplication;
    global List<EmailMessage> Emails;
    global List<EntitySubscription> FeedSubscriptionsForEntity;
    global List<Event> Events;
    global List<InvoiceLine> InvoiceLines;
    global List<InvoiceShare> Shares;
    global List<NetworkActivityAudit> ParentEntities;
    global List<Note> Notes;
    global List<NoteAndAttachment> NotesAndAttachments;
    global List<OpenActivity> OpenActivities;
    global List<PaymentLineInvoice> PaymentLinesInvoice;
    global List<ProcessInstance> ProcessInstances;
    global List<ProcessInstanceHistory> ProcessSteps;
    global List<Task> Tasks;
    global List<AIInsightValue> SobjectLookupValue;
    global List<AIRecordInsight> Target;
    global List<ContentVersion> FirstPublishLocation;
    global List<EmailMessageChangeEvent> RelatedTo;
    global List<EventChangeEvent> What;
    global List<EventRelationChangeEvent> Relation;
    global List<FeedComment> Parent;
    global List<FlowExecutionErrorEvent> ContextRecord;
    global List<FlowRecordRelation> RelatedRecord;
    global List<OutgoingEmail> RelatedTo;
    global List<TaskChangeEvent> What;

    global Invoice () 
    {
    }
}