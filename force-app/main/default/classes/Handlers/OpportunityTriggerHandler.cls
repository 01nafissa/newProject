public  class OpportunityTriggerHandler {
    public static void stageNameUpdate(list<opportunity> oppTriggerNew, 
    list<opportunity> oppTriggerOld, map<id, opportunity> tNewMap, map<id, opportunity> tOldMap ) {
        // her bir recordun stagename kotrolu yapiyoruz
        for (opportunity opp : oppTriggerNew) {
            if (opp.StageName != tOldMap.get(opp.id).stagename) {
                if(opp.StageName== 'Closed Lost'){
                    opp.description = 'Cok uzgunum';
                }
            if(opp.StageName== ' Closed Won'){
                opp.description = 'Yasasin!';
            }
             if(opp.StageName=='Prospecting'){
                opp.StageName.addError('Sureci basa donduremezsin..');
             }   
            }
        }
    }
}