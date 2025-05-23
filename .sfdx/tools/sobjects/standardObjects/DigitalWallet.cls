// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class DigitalWallet {
    global Id Id;
    global Boolean IsDeleted;
    global String DigitalWalletNumber;
    global Datetime CreatedDate;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime LastModifiedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime SystemModstamp;
    global Datetime LastViewedDate;
    global Datetime LastReferencedDate;
    global PaymentGateway PaymentGateway;
    global Id PaymentGatewayId;
    global String NickName;
    global String GatewayToken;
    global String Customer;
    global String Email;
    global Account Account;
    global Id AccountId;
    global String Status;
    global String CompanyName;
    global String PaymentMethodStreet;
    global String PaymentMethodCity;
    global String PaymentMethodState;
    global String PaymentMethodPostalCode;
    global String PaymentMethodCountry;
    global Double PaymentMethodLatitude;
    global Double PaymentMethodLongitude;
    global String PaymentMethodGeocodeAccuracy;
    global Address PaymentMethodAddress;
    global String Comments;
    global List<Payment> Payments;
    global List<PaymentAuthorization> PaymentAuthorizations;
    global List<Refund> Refunds;
    global List<AIInsightValue> SobjectLookupValue;
    global List<AIRecordInsight> Target;
    global List<FlowExecutionErrorEvent> ContextRecord;
    global List<FlowRecordRelation> RelatedRecord;

    global DigitalWallet () 
    {
    }
}