// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class PaymentGatewayLog {
    global Id Id;
    global Boolean IsDeleted;
    global String PaymentGatewayLogNumber;
    global Datetime CreatedDate;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime LastModifiedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime SystemModstamp;
    global SObject ReferencedEntity;
    global Id ReferencedEntityId;
    global String InteractionType;
    global String SfRefNumber;
    global String InteractionStatus;
    global String GatewayAuthCode;
    global String GatewayRefNumber;
    global String SfResultCode;
    global String GatewayResultCode;
    global String GatewayResultCodeDescription;
    global Datetime GatewayDate;
    global String GatewayMessage;
    global String GatewayAvsCode;
    global PaymentGateway PaymentGateway;
    global Id PaymentGatewayId;
    global String Request;
    global String Response;
    global List<FlowExecutionErrorEvent> ContextRecord;
    global List<FlowRecordRelation> RelatedRecord;

    global PaymentGatewayLog () 
    {
    }
}