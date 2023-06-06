public  class AccountUpdateHepler {
    @invocableMethod
  public static void updateAccountWebsite(list<id> accIds) {
    list<account> accounttoUpdate = new list<account>();

    list<account> acc=[select id, name from account where id in: accIds];
   
  }
}