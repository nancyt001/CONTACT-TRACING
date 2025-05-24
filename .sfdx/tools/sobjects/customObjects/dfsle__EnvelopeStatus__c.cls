// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class dfsle__EnvelopeStatus__c {
    global Id Id;
    global SObject Owner;
    global Id OwnerId;
    global Boolean IsDeleted;
    global String Name;
    global Datetime CreatedDate;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime LastModifiedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime SystemModstamp;
    global Date LastActivityDate;
    global Datetime LastViewedDate;
    global Datetime LastReferencedDate;
    global Account dfsle__Account__r;
    global Id dfsle__Account__c;
    global Case dfsle__Case__r;
    global Id dfsle__Case__c;
    global Datetime dfsle__Completed__c;
    global Contact dfsle__Contact__r;
    global Id dfsle__Contact__c;
    global Contract dfsle__Contract__r;
    global Id dfsle__Contract__c;
    global String dfsle__DocuSignId__c;
    global String dfsle__EmailSubject__c;
    global Datetime dfsle__Expires__c;
    global Datetime dfsle__LastStatusUpdate__c;
    global Lead dfsle__Lead__r;
    global Id dfsle__Lead__c;
    global Opportunity dfsle__Opportunity__r;
    global Id dfsle__Opportunity__c;
    global String dfsle__Reason__c;
    global String dfsle__SenderEmail__c;
    global String dfsle__SenderName__c;
    global Datetime dfsle__Sent__c;
    global String dfsle__SourceId__c;
    global String dfsle__Status__c;
    global String dfsle__TimeToComplete__c;
    global List<ActivityHistory> ActivityHistories;
    global List<AttachedContentDocument> AttachedContentDocuments;
    global List<Attachment> Attachments;
    global List<CollaborationGroupRecord> RecordAssociatedGroups;
    global List<CombinedAttachment> CombinedAttachments;
    global List<ContactRequest> ContactRequests;
    global List<ContentDocumentLink> ContentDocumentLinks;
    global List<DuplicateRecordItem> DuplicateRecordItems;
    global List<EmailMessage> Emails;
    global List<EntitySubscription> FeedSubscriptionsForEntity;
    global List<Event> Events;
    global List<NetworkActivityAudit> ParentEntities;
    global List<NetworkUserHistoryRecent> NetworkUserHistoryRecentToRecord;
    global List<Note> Notes;
    global List<NoteAndAttachment> NotesAndAttachments;
    global List<OpenActivity> OpenActivities;
    global List<ProcessInstance> ProcessInstances;
    global List<ProcessInstanceHistory> ProcessSteps;
    global List<RecordAction> RecordActions;
    global List<RecordActionHistory> RecordActionHistories;
    global List<SurveySubject> SurveySubjectEntities;
    global List<Task> Tasks;
    global List<TopicAssignment> TopicAssignments;
    global List<dfsle__EnvelopeStatus__History> Histories;
    global List<dfsle__EnvelopeStatus__Share> Shares;
    global List<dfsle__RecipientStatus__c> dfsle__Recipients__r;
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
    global List<OutgoingEmail> RelatedTo;
    global List<PendingServiceRouting> WorkItem;
    global List<TaskChangeEvent> What;

    global dfsle__EnvelopeStatus__c () 
    {
    }
}