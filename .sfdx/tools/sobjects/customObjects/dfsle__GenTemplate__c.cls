// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class dfsle__GenTemplate__c {
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
    global String dfsle__AgreementMetadata__c;
    global String dfsle__ApplyCLMWorkflow__c;
    global Boolean dfsle__CurrencyLocaleEdit__c;
    global String dfsle__Description__c;
    global String dfsle__DocumentTargetLocation__c;
    /* The configuration used to generate this envelope.
    */
    global dfsle__EnvelopeConfiguration__c dfsle__EnvelopeConfiguration__r;
    /* The configuration used to generate this envelope.
    */
    global Id dfsle__EnvelopeConfiguration__c;
    global String dfsle__FileName__c;
    global String dfsle__FileSuffix__c;
    global Boolean dfsle__HasEnabledSendForSignature__c;
    global Boolean dfsle__HasLaunchAutomatically__c;
    global Boolean dfsle__HasPreviewedDocuments__c;
    global String dfsle__InvoiceMappings__c;
    global Boolean dfsle__IsAutomateInvoice__c;
    global Boolean dfsle__IsSample__c;
    global String dfsle__ObjectMappings2__c;
    global String dfsle__ObjectMappings3__c;
    global String dfsle__ObjectMappings4__c;
    global String dfsle__ObjectMappings__c;
    global String dfsle__SignerMappings__c;
    global String dfsle__SourceObject__c;
    global Double dfsle__StepsCompleted__c;
    global String dfsle__TemplateCurrencyFormat__c;
    global String dfsle__TemplateId__c;
    global String dfsle__TemplateType__c;
    global Boolean dfsle__UseAllTemplates__c;
    global Boolean dfsle__UseCurrentRecord__c;
    global String dfsle__templateCurrencyCode__c;
    global String dfsle__templateCurrencySymbol__c;
    global String dfsle__templateISO__c;
    global String dfsle__templateLocaleCode__c;
    global String dfsle__templateLocale__c;
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
    global List<dfsle__GenTemplate__Share> Shares;
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

    global dfsle__GenTemplate__c () 
    {
    }
}