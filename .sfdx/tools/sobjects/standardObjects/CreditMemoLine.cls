// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class CreditMemoLine {
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
    global CreditMemo CreditMemo;
    global Id CreditMemoId;
    global Date StartDate;
    global Date EndDate;
    global Date TaxEffectiveDate;
    global String Type;
    global String TaxCode;
    global Double TaxRate;
    global String Status;
    global Decimal ChargeAmount;
    global Decimal TaxAmount;
    global Decimal AdjustmentAmount;
    global String Description;
    global String ReferenceEntityItemTypeCode;
    global String ReferenceEntityItemType;
    global CreditMemoLine RelatedLine;
    global Id RelatedLineId;
    global Product2 Product2;
    global Id Product2Id;
    global String TaxName;
    global List<AttachedContentDocument> AttachedContentDocuments;
    global List<CombinedAttachment> CombinedAttachments;
    global List<ContentDocumentLink> ContentDocumentLinks;
    global List<CreditMemoLine> CreditMemoLines;
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

    global CreditMemoLine () 
    {
    }
}