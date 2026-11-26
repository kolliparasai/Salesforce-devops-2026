public class EmployeeCodeHandler {

    public static void generateEmployeeCode(
        List<Employee__c> employees
    ) {
        for (Employee__c emp : employees) {

            if (String.isBlank(emp.Employee_Code__c)) {

                emp.Employee_Code__c =
                    'EMP-' + 
                    String.valueOf(Crypto.getRandomUUID())
                    .replace('-', '')
                    .substring(0, 12);
            }
        }
    }
}