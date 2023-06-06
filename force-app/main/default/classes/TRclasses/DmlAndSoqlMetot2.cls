public class DmlAndSoqlMetot2 {
    public static integer accountSelectIndustry(string indus) {
        list<account> accList = [select id, name, industry from account where industry =:indus ];
        integer recordSayi = accList.size();
        return recordSayi;
    }
    public static void childToParentSoql() {
        list<contact> conList = [select id, lastname from contact where account.industry= 'Energy'];

        for (contact eachCon: conList) {
            eachCon.lastname = eachCon.lastname + ' update';
        }
        update conList;
    }
}