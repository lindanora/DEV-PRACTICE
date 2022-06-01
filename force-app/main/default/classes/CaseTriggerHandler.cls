public class CaseTriggerHandler {
    public static void caseStatus(list<case> caseNew){
        for(case eachCase: caseNew){
            if(eachCase.Origin == 'Email'){
               eachCase.Status = 'New';
               eachCase.Priority = 'Medium';
            }
        }   
    }
}
