public class CaseTriggerHandler {
    public static void CaseOrigin(list<case> caseTriggerNew, 
    list<case> caseTriggerOld,
    map<id, case> caseTriggerNewMap,
    map<id, case> caseTriggerOldMap) {
       for (case eachCase: caseTriggerNew) {
        if(eachCase.Origin == 'Email'){
            eachCase.status='New';
            eachCase.priority = 'Medium';
        }
       } 
    }
    public static void CreateChildCase(list<case> caseTriggerNew, 
    list<case> caseTriggerOld,
    map<id, case> caseTriggerNewMap,
    map<id, case> caseTriggerOldMap){
        list<case> childCaseList = new list<case>();
     for (case eachC : caseTriggerNew) {
        if(eachC.description.contains('Password')){
            case childCase = new case();
            childCase.subject = 'Parent Case may contain secret info, do something NOW';
            childCase.parentId = childCase.id;
            childCase.priority ='High';
            childCase.description = 'Secret info not allowed in case';

            childCaseList.add(childCase);
        }
        
     }
     if(!childCaseList.isEmpty()){
        insert childCaseList;
     }
    }
    public static integer recordCount=0;
    public static integer triggerCount =0;
}