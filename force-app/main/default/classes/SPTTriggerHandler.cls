public  class SPTTriggerHandler {
    public static void createDefaultTicket(list<salesforce_project__c> spTriggerNew) {
        //create list
        list<salesforce_ticket__c> listST = new  list<salesforce_ticket__c>();
        for (salesforce_project__c newSPro : spTriggerNew) {
            salesforce_ticket__c st=new salesforce_ticket__c();
            st.Subject__c = 'Default Ticket';
            st.salesforce_project__c = newSPro.id;
            listST.add(st); //relationship field
        }
        if(!listST.isEmpty()){
            insert listST;
        }
       }
       public static void validate1(list<salesforce_project__c> spTriggerNew,list<salesforce_project__c> spTriggerOld,map<id, salesforce_project__c> spTriggerNewMap, map<id, salesforce_project__c> spTriggerOldMap) {
        //create  aset of id of sp
      
    
        // get all the tickets of all the sp where ticket is not completed
        set<id> setSPid = new set<id>();
        for (Salesforce_Project__c newSP : spTriggerNew) {
            if (newSP.Status__c != spTriggerOldMap.get(newSP.Id).status__c && newSP.Status__c == 'Completed') {
                setSPid.add(newSP.Id);
            }
        }
        
        //get all the tickets of all the SP(status is completed) and where ticket's status is not completed
        List<Salesforce_Ticket__c> listST = [select id, status__c, Salesforce_Project__c from Salesforce_Ticket__c where Salesforce_Project__c in :setSPid and status__c != 'Completed'];
    
    
        //for each ticket
            //get project id from newMap
                //add error
        for (Salesforce_Ticket__c eachST : listST) {
            salesforce_project__c sp = spTriggerNewMap.get(eachST.Salesforce_Project__c);
            sp.addError('Cannot complete project because all its tickets are NOT completed. Try again later.');
        }
      }
      //pass salesforce project id in method
         @future
         public static void updateDescriptionFuture(set<id> spIds) {
            //fetch all salesforce project using project ids via SOQL
            //update description for all projectt
            List<Salesforce_Project__c> listSP = [select id, name, description__c from Salesforce_Project__c where id in :spIds];
            for (Salesforce_Project__c eachSP : listSP) {
                eachSP.description__c = 'Updated from future. Ok?';
            }
            update listSP;
         }
         public static void spStatusCompleted(List<salesforce_project__c> spTriggerNew, List<salesforce_project__c> spTriggerOld, Map<id, Salesforce_Project__c> spTriggerNewMap,Map<id, Salesforce_Project__c> spTriggerOldMap) {
            set<id> spIds = new set<id>();
            for (Salesforce_Project__c sp : spTriggerNew) {
                if (sp.status__c == 'Completed' && sp.status__c != spTriggerOldMap.get(sp.id).Status__c) {
                    spIds.add(sp.id);
                }
            }
            if (!spIds.isEmpty()) {
                //call future method
                completeTickets(spIds);
            }
        }
    
        @future
        private static void completeTickets(set<id> spIds) {
            //we have all the sp ids.
            //get all tickets of all these spids which are NOT COMpleted.
                //update tickets to complete
            List<Salesforce_Ticket__c> allST = [select id, status__c, salesforce_project__c from salesforce_ticket__c where Salesforce_Project__c in :spIds and status__c != 'Completed'];
            for (Salesforce_Ticket__c st : allST) {
                st.Status__c = 'Completed';
            }
            update allST;
        }
    }
