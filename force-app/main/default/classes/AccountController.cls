public with sharing class AccountController {
  @AuraEnabled(cacheable=true)
  public static List<Account> getAccounts() {
    // The following line is used only for the last challenge
    throw new AuraHandledException('Forced error');
    // return [SELECT Name, AnnualRevenue, Industry FROM Account WITH SECURITY_ENFORCED ORDER BY Name];
  }

  @AuraEnabled(cacheable=true)
  public static List<Contact> getRelatedContacts(Id searchId) {
    return [SELECT Name, Title, Email, Phone FROM Contact WHERE AccountId = :searchId WITH SECURITY_ENFORCED];
  }
}