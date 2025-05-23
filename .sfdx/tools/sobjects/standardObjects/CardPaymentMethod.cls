// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class CardPaymentMethod {
    global Id Id;
    global Boolean IsDeleted;
    global String CardPaymentMethodNumber;
    global Datetime CreatedDate;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime LastModifiedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime SystemModstamp;
    global Datetime LastViewedDate;
    global Datetime LastReferencedDate;
    global String DisplayCardNumber;
    global Integer ExpiryMonth;
    global Integer ExpiryYear;
    global Integer StartMonth;
    global Integer StartYear;
    global String CardType;
    global String CardTypeCategory;
    global String AutoCardType;
    global String CardCategory;
    global Account Account;
    global Id AccountId;
    global String PaymentMethodStreet;
    global String PaymentMethodCity;
    global String PaymentMethodState;
    global String PaymentMethodPostalCode;
    global String PaymentMethodCountry;
    global Double PaymentMethodLatitude;
    global Double PaymentMethodLongitude;
    global String PaymentMethodGeocodeAccuracy;
    global Address PaymentMethodAddress;
    global String NickName;
    global String CardHolderName;
    global Integer CardBin;
    global Integer CardLastFour;
    global String Email;
    global String Comments;
    global String Status;
    global String InputCardNumber;
    global String CardHolderFirstName;
    global String CardHolderLastName;
    global String CompanyName;
    global String GatewayToken;
    global PaymentGateway PaymentGateway;
    global Id PaymentGatewayId;
    global List<Payment> Payments;
    global List<PaymentAuthorization> PaymentAuthorizations;
    global List<PaymentGatewayLog> PaymentGatewayLogs;
    global List<Refund> Refunds;
    global List<AIInsightValue> SobjectLookupValue;
    global List<AIRecordInsight> Target;
    global List<FlowExecutionErrorEvent> ContextRecord;
    global List<FlowRecordRelation> RelatedRecord;

    global CardPaymentMethod () 
    {
    }
}