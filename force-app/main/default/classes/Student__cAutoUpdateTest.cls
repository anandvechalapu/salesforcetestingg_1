@isTest
private class Student__cAutoUpdateTest
{
    static testMethod void AutoUpdateMobileFieldTest()
    {
        //Create student record
        Student__c student = new Student__c();
        student.Phone = '123456789';
        insert student;
        
        //Verify Mobile field is updated
        Student__c updatedStudent = [SELECT Mobile FROM Student__c WHERE Id = :student.Id];
        System.assertEquals(updatedStudent.Mobile, '123456789');

        //Create student record with blank Phone field
        Student__c student2 = new Student__c();
        insert student2;
        
        //Verify Mobile field is blank
        Student__c updatedStudent2 = [SELECT Mobile FROM Student__c WHERE Id = :student2.Id];
        System.assertEquals(updatedStudent2.Mobile, null);
    }
    
    static testMethod void AutoUpdateMobileFieldTriggerTest()
    {
        //Create student record
        Student__c student = new Student__c();
        student.Phone = '123456789';
        insert student;
        
        //Verify AutoUpdateMobileFieldTrigger is called and Mobile field is updated
        Student__c updatedStudent = [SELECT Mobile FROM Student__c WHERE Id = :student.Id];
        System.assertEquals(updatedStudent.Mobile, '123456789');

        //Create student record with blank Phone field
        Student__c student2 = new Student__c();
        insert student2;
        
        //Verify AutoUpdateMobileFieldTrigger is called and Mobile field is blank
        Student__c updatedStudent2 = [SELECT Mobile FROM Student__c WHERE Id = :student2.Id];
        System.assertEquals(updatedStudent2.Mobile, null);
    }
}