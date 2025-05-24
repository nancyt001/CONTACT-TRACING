// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class Position__c {
    global Id Id;
    global SObject Owner;
    global Id OwnerId;
    global Boolean IsDeleted;
    global String Name;
    global RecordType RecordType;
    global Id RecordTypeId;
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
    global String Job_description__c;
    global String Responsibilities__c;
    global String Skills_Required__c;
    global String Educational_Requirements__c;
    global Decimal MInimum_Pay__c;
    global Decimal Maximum_Pay__c;
    global Boolean Travel_Required__c;
    global Boolean Java__c;
    global Boolean Javascript__c;
    global Boolean C__c;
    global Boolean Apex__c;
    global Boolean Excel__c;
    global Boolean Powerpoint__c;
    global Boolean Word__c;
    global Boolean Team_Building__c;
    global Date Open_Date__c;
    global Date Hire_By__c;
    global Date Close_Date__c;
    global String Location__c;
    global String Status__c;
    global String Type__c;
    global String Functional_Area__c;
    global String Job_Level__c;
    global String Working_Days__c;
    global String Certifications__c;
    global Double Days_Open__c;
    global String Severity__c;
    global User Hiring_Manager__r;
    global Id Hiring_Manager__c;
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
    global List<Job_Application__c> Job_Applications__r;
    global List<Job_Posting__c> Job_Postings__r;
    global List<NetworkActivityAudit> ParentEntities;
    global List<NetworkUserHistoryRecent> NetworkUserHistoryRecentToRecord;
    global List<Note> Notes;
    global List<NoteAndAttachment> NotesAndAttachments;
    global List<OpenActivity> OpenActivities;
    global List<Position__Feed> Feeds;
    global List<Position__History> Histories;
    global List<Position__Share> Shares;
    global List<ProcessInstance> ProcessInstances;
    global List<ProcessInstanceHistory> ProcessSteps;
    global List<RecordAction> RecordActions;
    global List<RecordActionHistory> RecordActionHistories;
    global List<SurveySubject> SurveySubjectEntities;
    global List<Task> Tasks;
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
    global List<OutgoingEmail> RelatedTo;
    global List<PendingServiceRouting> WorkItem;
    global List<TaskChangeEvent> What;

    global Position__c () 
    {
    }
}