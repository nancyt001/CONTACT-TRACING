// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class FlowDefinitionView {
    global Id Id;
    global String DurableId;
    global String ApiName;
    global String Label;
    global String Description;
    global String ProcessType;
    global String TriggerType;
    global String NamespacePrefix;
    global String ActiveVersionId;
    global String LatestVersionId;
    global String LastModifiedBy;
    global Boolean IsActive;
    global Boolean IsOutOfDate;
    global Datetime LastModifiedDate;
    global Boolean IsTemplate;
    global String Builder;
    global String ManageableState;
    global String InstalledPackageName;
    global Integer TriggerOrder;
    global List<FlowVersionView> Versions;

    global FlowDefinitionView () 
    {
    }
}