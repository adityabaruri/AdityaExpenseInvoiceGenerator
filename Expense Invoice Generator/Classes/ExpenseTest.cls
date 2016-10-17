@isTest

public class ExpenseTest {                                //Test Class
 public testMethod static void myTest(){                  //Test Method
      
        Expense__c expense = new Expense__c();            //Expense Test Object
        
        expense.Total_Expense__c=1000;                    //Test value for Total Expense
        expense.Name='party';                             //Test value for Event Name
        expense.Date__c=system.today();                   //Test value for Date
        
        insert expense;                                   //Inserting the test object
        
        Member__c member = new Member__c();               //Member Test Object
        
        member.Name='xyz';                                //Test value for Member Name
        member.Email__c='abc@abc.com';                    //Test value for Email
        
        insert member;                                    //Inserting the test object
        
        Exp_Member__c expmem = new Exp_Member__c();       //Exp Member Test Object
        
        expmem.Member_Expense__c=member.Id;               //Test value for Member
        expmem.Expense_member__c=expense.Id;              //Test value for Expense
        expmem.Contributed_Amount__c=100;                 //Test value for Contributed_Amount__c
        
        insert expmem;                                    //Inserting the test object
        
        PrintPdf pPdf = new PrintPdf (new ApexPages.StandardController(expense));   //PrintPdf Test Object
        
        List<Exp_Member__c> ge = new List<Exp_Member__c>();
        ge = pPdf.getExpMembers();
       
       }
}