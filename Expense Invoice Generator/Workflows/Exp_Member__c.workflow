<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Email_for_reimbursement</fullName>
        <description>Email for reimbursement</description>
        <protected>true</protected>
        <recipients>
            <field>Email_member__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Reimbursement_Email</template>
    </alerts>
    <alerts>
        <fullName>Email_will_be_send_to_the_contributor</fullName>
        <description>Email will be send to the contributor</description>
        <protected>false</protected>
        <recipients>
            <field>Email_member__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Reimbursement_Email</template>
    </alerts>
    <fieldUpdates>
        <fullName>Email_Update</fullName>
        <description>Update the email of the member in the junction object</description>
        <field>Email_member__c</field>
        <formula>Member_Expense__r.Email__c</formula>
        <name>Email Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Email will be send to the contributor</fullName>
        <actions>
            <name>Email_will_be_send_to_the_contributor</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 OR 2</booleanFilter>
        <criteriaItems>
            <field>Exp_Member__c.Email_member__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Exp_Member__c.Name</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Email will be send to the contributor</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Member Email</fullName>
        <actions>
            <name>Email_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Member__c.Email__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Email of the member</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
