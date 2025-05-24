// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class CreditMemoInvApplication {
    global Id Id;
    global Boolean IsDeleted;
    global String CreditMemoInvoiceNumber;
    global Datetime CreatedDate;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime LastModifiedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime SystemModstamp;
    global Invoice Invoice;
    global Id InvoiceId;
    global CreditMemo CreditMemo;
    global Id CreditMemoId;
    global Decimal Amount;
    global String Type;
    global String Description;
    global Datetime Date;
    global Datetime AppliedDate;
    global Datetime EffectiveDate;
    global Datetime UnappliedDate;
    global List<AttachedContentDocument> AttachedContentDocuments;
    global List<CombinedAttachment> CombinedAttachments;
    global List<ContentDocumentLink> ContentDocumentLinks;
    global List<CreditMemoInvApplicationFeed> Feeds;
    global List<CreditMemoInvApplicationHistory> Histories;
    global List<EntitySubscription> FeedSubscriptionsForEntity;
    global List<NetworkActivityAudit> ParentEntities;
    global List<ProcessInstance> ProcessInstances;
    global List<ProcessInstanceHistory> ProcessSteps;
    global List<AIInsightValue> SobjectLookupValue;
    global List<AIRecordInsight> Target;
    global List<ContentVersion> FirstPublishLocation;
    global List<FeedComment> Parent;
    global List<FlowExecutionErrorEvent> ContextRecord;
    global List<FlowRecordRelation> RelatedRecord;

    global CreditMemoInvApplication () 
    {
    }
}