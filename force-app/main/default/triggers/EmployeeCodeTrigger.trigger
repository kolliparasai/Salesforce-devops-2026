trigger EmployeeCodeTrigger on Employee__c (before insert) {

    EmployeeCodeHandler.generateEmployeeCode(
        Trigger.new
    );

}