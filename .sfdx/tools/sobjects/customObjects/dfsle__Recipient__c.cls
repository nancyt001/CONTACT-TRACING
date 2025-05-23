// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class dfsle__Recipient__c {
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
    /* DocuSign Envelope
    */
    global dfsle__Envelope__c dfsle__Envelope__r;
    /* DocuSign Envelope
    */
    global Id dfsle__Envelope__c;
    /* Access Code
    */
    global String dfsle__AccessCode__c;
    global Boolean dfsle__DeliverBySms__c;
    global String dfsle__EmailMessage__c;
    global String dfsle__EmailSubject__c;
    global String dfsle__Email__c;
    global String dfsle__EnvelopeRecipientId__c;
    global String dfsle__HostEmail__c;
    global String dfsle__HostName__c;
    global Boolean dfsle__IdCheckRequired__c;
    global String dfsle__Language__c;
    global String dfsle__Note__c;
    global String dfsle__Options__c;
    global Boolean dfsle__ReadOnly__c;
    global Boolean dfsle__Required__c;
    global Double dfsle__RoleValue__c;
    /* Role
    */
    global String dfsle__Role__c;
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
    global List<AttachedContentDocument> AttachedContentDocuments;
    global List<Attachment> Attachments;
    global List<CollaborationGroupRecord> RecordAssociatedGroups;
    global List<CombinedAttachment> CombinedAttachments;
    global List<ContactRequest> ContactRequests;
    global List<ContentDocumentLink> ContentDocumentLinks;
    global List<DuplicateRecordItem> DuplicateRecordItems;
    global List<EntitySubscription> FeedSubscriptionsForEntity;
    global List<NetworkActivityAudit> ParentEntities;
    global List<NetworkUserHistoryRecent> NetworkUserHistoryRecentToRecord;
    global List<Note> Notes;
    global List<NoteAndAttachment> NotesAndAttachments;
    global List<ProcessInstance> ProcessInstances;
    global List<ProcessInstanceHistory> ProcessSteps;
    global List<RecordAction> RecordActions;
    global List<RecordActionHistory> RecordActionHistories;
    global List<SurveySubject> SurveySubjectEntities;
    global List<TopicAssignment> TopicAssignments;
    global List<AIInsightValue> SobjectLookupValue;
    global List<AIRecordInsight> Target;
    global List<AgentWork> WorkItem;
    global List<ContentDistribution> RelatedRecord;
    global List<ContentVersion> FirstPublishLocation;
    global List<EmailMessageChangeEvent> RelatedTo;
    global List<EventChangeEvent> What;
    global List<EventRelationChangeEvent> Relation;
    global List<FeedComment> Parent;
    global List<FlowExecutionErrorEvent> ContextRecord;
    global List<FlowRecordRelation> RelatedRecord;
    global List<PendingServiceRouting> WorkItem;
    global List<TaskChangeEvent> What;

    global dfsle__Recipient__c () 
    {
    }
}