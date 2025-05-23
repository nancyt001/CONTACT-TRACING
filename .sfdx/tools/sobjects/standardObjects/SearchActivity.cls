// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class SearchActivity {
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
    global String SearchTerm;
    global Date QueryDate;
    global Integer CountQueries;
    global Integer CountUsers;
    global Double AvgNumResults;
    global String KbChannel;
    global String Period;
    global Double ClickRank;
    global Knowledge__kav ClickedRecord;
    global Id ClickedRecordId;
    global String QueryLanguage;
    global String ClickedRecordName;
    global List<FlowExecutionErrorEvent> ContextRecord;
    global List<FlowRecordRelation> RelatedRecord;

    global SearchActivity () 
    {
    }
}