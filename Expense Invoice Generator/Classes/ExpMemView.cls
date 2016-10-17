public with sharing class ExpMemView{

    public Exp_Member__c expMem{get;set;}
     public Expense__c expense{get;set;}
    
    public List<Exp_Member__c> listMembers{get;set;}
    public List<Expense__c> listExpense{get;set;}
    
    
     public ExpMemView() {
        expMem=new Exp_Member__c ();
        expense = new Expense__c ();
        
    }
    
    public PageReference fetchRecord(){
        listMembers=[select Id,Name,Expense_member__r.Name,Member_Expense__r.Name,Email_member__c,Contributed_Amount__c  from Exp_Member__c];
     
    return null;
    }
}