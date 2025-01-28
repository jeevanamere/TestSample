public class AccountHelper {
    
    // Method to retrieve Accounts with AnnualRevenue > 1,000,000
    public static List<Account> getHighValueAccounts() {
        try {
            List<Account> highValueAccounts = [
                SELECT Id, Name, AnnualRevenue 
                FROM Account 
                WHERE AnnualRevenue > 1000000
            ];
            return highValueAccounts;
        } catch (Exception e) {
            System.debug('Error fetching high-value accounts: ' + e.getMessage());
            return new List<Account>();
        }
    }
}
