// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class InvoiceLine {
    global Id Id;
    global Boolean IsDeleted;
    global String Name;
    global Datetime CreatedDate;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime LastModifiedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime SystemModstamp;
    global Invoice Invoice;
    global Id InvoiceId;
    global OrderItem ReferenceEntityItem;
    global Id ReferenceEntityItemId;
    global OrderItem GroupReferenceEntityItem;
    global Id GroupReferenceEntityItemId;
    global Double Quantity;
    global Decimal UnitPrice;
    global Decimal ChargeAmount;
    global Decimal TaxAmount;
    global Decimal AdjustmentAmount;
    global String InvoiceStatus;
    global String Description;
    global Date InvoiceLineStartDate;
    global Date InvoiceLineEndDate;
    global String ReferenceEntityItemType;
    global String ReferenceEntityItemTypeCode;
    global Product2 Product2;
    global Id Product2Id;
    global InvoiceLine RelatedLine;
    global Id RelatedLineId;
    global String Type;
    global String TaxName;
    global String TaxCode;
    global Double TaxRate;
    global Date TaxEffectiveDate;
    global List<AttachedContentDocument> AttachedContentDocuments;
    global List<CombinedAttachment> CombinedAttachments;
    global List<ContentDocumentLink> ContentDocumentLinks;
    global List<EntitySubscription> FeedSubscriptionsForEntity;
    global List<InvoiceLine> InvoiceLines;
    global List<NetworkActivityAudit> ParentEntities;
    global List<ProcessInstance> ProcessInstances;
    global List<ProcessInstanceHistory> ProcessSteps;
    global List<AIInsightValue> SobjectLookupValue;
    global List<AIRecordInsight> Target;
    global List<ContentVersion> FirstPublishLocation;
    global List<FeedComment> Parent;
    global List<FlowExecutionErrorEvent> ContextRecord;
    global List<FlowRecordRelation> RelatedRecord;

    global InvoiceLine () 
    {
    }
}