public with sharing class Student__cAutoUpdate {
    public static void AutoUpdateMobileField(List<Student__c> studentList){
        //Iterate through list of Student__c records
        for(Student__c student : studentList){
            //Check if Phone field is not blank
            if(student.Phone != null){
                //Set Mobile field to same value as Phone field
                student.Mobile = student.Phone;
            }
            //If Phone field is blank, set Mobile field to null
            else{
                student.Mobile = null;
            }
        }
        //Update Student__c records
        update studentList;
    }
    
    //Trigger to be called when a new Student__c record is inserted
    trigger Student__cAutoUpdateTrigger on Student__c (before insert) {
        //Call AutoUpdateMobileField method to update Mobile field
        Student__cAutoUpdate.AutoUpdateMobileField(Trigger.new);
    }
}