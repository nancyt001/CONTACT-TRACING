// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class DandBCompany {
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
    global Datetime LastViewedDate;
    global Datetime LastReferencedDate;
    global String DunsNumber;
    global String Street;
    global String City;
    global String State;
    global String PostalCode;
    global String Country;
    global String GeocodeAccuracyStandard;
    global Address Address;
    global String Phone;
    global String Fax;
    global String CountryAccessCode;
    global String PublicIndicator;
    global String StockSymbol;
    global String StockExchange;
    global Double SalesVolume;
    global String URL;
    global String OutOfBusiness;
    global Double EmployeesTotal;
    global String FipsMsaCode;
    global String FipsMsaDesc;
    global String TradeStyle1;
    global String YearStarted;
    global String MailingStreet;
    global String MailingCity;
    global String MailingState;
    global String MailingPostalCode;
    global String MailingCountry;
    global String MailingGeocodeAccuracy;
    global Address MailingAddress;
    global String Latitude;
    global String Longitude;
    global String PrimarySic;
    global String PrimarySicDesc;
    global String SecondSic;
    global String SecondSicDesc;
    global String ThirdSic;
    global String ThirdSicDesc;
    global String FourthSic;
    global String FourthSicDesc;
    global String FifthSic;
    global String FifthSicDesc;
    global String SixthSic;
    global String SixthSicDesc;
    global String PrimaryNaics;
    global String PrimaryNaicsDesc;
    global String SecondNaics;
    global String SecondNaicsDesc;
    global String ThirdNaics;
    global String ThirdNaicsDesc;
    global String FourthNaics;
    global String FourthNaicsDesc;
    global String FifthNaics;
    global String FifthNaicsDesc;
    global String SixthNaics;
    global String SixthNaicsDesc;
    global String OwnOrRent;
    global Double EmployeesHere;
    global String EmployeesHereReliability;
    global String SalesVolumeReliability;
    global String CurrencyCode;
    global String LegalStatus;
    global Double GlobalUltimateTotalEmployees;
    global String EmployeesTotalReliability;
    global String MinorityOwned;
    global String WomenOwned;
    global String SmallBusiness;
    global String MarketingSegmentationCluster;
    global String ImportExportAgent;
    global String Subsidiary;
    global String TradeStyle2;
    global String TradeStyle3;
    global String TradeStyle4;
    global String TradeStyle5;
    global String NationalId;
    global String NationalIdType;
    global String UsTaxId;
    global String GeoCodeAccuracy;
    global Integer FamilyMembers;
    global String MarketingPreScreen;
    global String GlobalUltimateDunsNumber;
    global String GlobalUltimateBusinessName;
    global String ParentOrHqDunsNumber;
    global String ParentOrHqBusinessName;
    global String DomesticUltimateDunsNumber;
    global String DomesticUltimateBusinessName;
    global String LocationStatus;
    global String CompanyCurrencyIsoCode;
    global String Description;
    global Integer FortuneRank;
    global String IncludedInSnP500;
    global Integer PremisesMeasure;
    global String PremisesMeasureReliability;
    global String PremisesMeasureUnit;
    global Double EmployeeQuantityGrowthRate;
    global Double SalesTurnoverGrowthRate;
    global String PrimarySic8;
    global String PrimarySic8Desc;
    global String SecondSic8;
    global String SecondSic8Desc;
    global String ThirdSic8;
    global String ThirdSic8Desc;
    global String FourthSic8;
    global String FourthSic8Desc;
    global String FifthSic8;
    global String FifthSic8Desc;
    global String SixthSic8;
    global String SixthSic8Desc;
    global Integer PriorYearEmployees;
    global Double PriorYearRevenue;
    global List<Account> Accounts;
    global List<Lead> Leads;
    global List<AIInsightValue> SobjectLookupValue;
    global List<AIRecordInsight> Target;
    global List<AccountChangeEvent> DandbCompany;
    global List<FlowExecutionErrorEvent> ContextRecord;
    global List<FlowRecordRelation> RelatedRecord;
    global List<LeadChangeEvent> DandbCompany;

    global DandBCompany () 
    {
    }
}