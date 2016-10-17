public with sharing class PrintPdf{
    public Expense__c expObj{get;set;}
    public List<Exp_Member__c> listMembers{get;set;}            //List of Exp Member Object
    
    public PrintPdf (ApexPages.StandardController controller){
        expObj=(Expense__c)controller.getRecord();
        listMembers = getExpMembers();
    }
     
    //Returns list of Exp Member object
    public List<Exp_Member__c> getExpMembers(){
        return [Select Member_Expense__r.Name, Contributed_Amount__c from Exp_Member__c where Expense_member__c =: expObj.Id];
    }
}