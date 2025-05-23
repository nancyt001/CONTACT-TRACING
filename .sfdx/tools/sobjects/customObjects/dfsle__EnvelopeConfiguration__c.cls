// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class dfsle__EnvelopeConfiguration__c {
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
    global String dfsle__Action__c;
    global Boolean dfsle__Active__c;
    global Boolean dfsle__AddSourceDocuments__c;
    global Boolean dfsle__AddSourceRecipients__c;
    global String dfsle__CustomFields__c;
    global String dfsle__DFSTemplateId__c;
    global String dfsle__DocuSignId__c;
    global String dfsle__EmailMessage__c;
    global String dfsle__EmailSubject__c;
    global Double dfsle__ExpireAfterDays__c;
    global Double dfsle__ExpireWarnDays__c;
    global Boolean dfsle__Expires__c;
    global Boolean dfsle__IsDraft__c;
    global Boolean dfsle__IsQuickSend__c;
    global String dfsle__MergeFields__c;
    global String dfsle__Notifications__c;
    global String dfsle__ObjectType__c;
    global String dfsle__Options__c;
    global Double dfsle__RemindAfterDays__c;
    global Double dfsle__RemindFrequencyDays__c;
    global Boolean dfsle__Remind__c;
    global String dfsle__SenderPermissions__c;
    global User dfsle__Sender__r;
    global Id dfsle__Sender__c;
    global String dfsle__SendingExperience__c;
    global Boolean dfsle__ShowChatterSettings__c;
    global Boolean dfsle__ShowEmailMessage__c;
    global Boolean dfsle__ShowEmailSubject__c;
    global Boolean dfsle__ShowRemindExpire__c;
    global Boolean dfsle__ShowSendButton__c;
    global Boolean dfsle__ShowTagButton__c;
    global String dfsle__SourceObject__c;
    global String dfsle__TemplateType__c;
    global String dfsle__SenderDocuSignUserName__c;
    global String dfsle__SenderSalesforceUserName__c;
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
    global List<dfsle__CustomParameterMap__c> dfsle__CustomParameterMap__r;
    global List<dfsle__CustomRecipient__c> dfsle__CustomRecipient__r;
    global List<dfsle__EnvelopeConfigurationDocument__c> dfsle__Documents__r;
    global List<dfsle__EnvelopeConfigurationRecipient__c> dfsle__Recipients__r;
    global List<dfsle__EnvelopeConfiguration__History> Histories;
    global List<dfsle__EnvelopeConfiguration__Share> Shares;
    global List<dfsle__Envelope__c> dfsle__EnvelopeConfiguration__r;
    global List<dfsle__GenTemplate__c> dfsle__GenTemplates__r;
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

    global dfsle__EnvelopeConfiguration__c () 
    {
    }
}