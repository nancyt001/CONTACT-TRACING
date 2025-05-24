// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class SurveyInvitation {
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
    global Datetime LastViewedDate;
    global Datetime LastReferencedDate;
    global Survey Survey;
    global Id SurveyId;
    global SObject Participant;
    global Id ParticipantId;
    global Boolean OptionsAllowParticipantAccessTheirResponse;
    global Boolean OptionsCollectAnonymousResponse;
    global Boolean OptionsAllowGuestUserResponse;
    global String InvitationLink;
    global SurveyEmailBranding EmailBranding;
    global Id EmailBrandingId;
    global Datetime InviteExpiryDateTime;
    global Network Community;
    global Id CommunityId;
    global Boolean IsDefault;
    global String UUID;
    global String ResponseStatus;
    global List<AttachedContentDocument> AttachedContentDocuments;
    global List<CombinedAttachment> CombinedAttachments;
    global List<ContentDocumentLink> ContentDocumentLinks;
    global List<LinkedArticle> LinkedArticles;
    global List<ProcessInstance> ProcessInstances;
    global List<ProcessInstanceHistory> ProcessSteps;
    global List<SurveyInvitationShare> Shares;
    global List<SurveyQuestionScore> SurveyQuestionScores;
    global List<SurveyResponse> SurveyResponses;
    global List<SurveySubject> SurveySubjects;
    global List<SurveySubject> SurveySubjectInvitation;
    global List<AIInsightValue> SobjectLookupValue;
    global List<AIRecordInsight> Target;
    global List<ContentVersion> FirstPublishLocation;
    global List<FlowExecutionErrorEvent> ContextRecord;
    global List<FlowRecordRelation> RelatedRecord;
    global List<SurveyQuestionResponse> Invitation;

    global SurveyInvitation () 
    {
    }
}