public class AccountWithHotRating {
    // Method to retrieve accounts with Rating = 'Hot'
    public static List<Account> getHotRatedAccounts() {
        try {
            // Query to fetch accounts with Rating = 'Hot'
            List<Account> hotAccounts = [SELECT Id, Name, Rating FROM Account WHERE Rating = 'Hot'];
            return hotAccounts;
        } catch (Exception e) {
            // Log the error if something goes wrong
            System.debug('Error fetching hot-rated accounts: ' + e.getMessage());
            return new List<Account>();
        }
    }

    // Optional: Method to display account names in debug logs
    public static void debugHotAccounts() {
        List<Account> hotAccounts = getHotRatedAccounts();
        if (!hotAccounts.isEmpty()) {
            for (Account acc : hotAccounts) {
                System.debug('Hot Account: ' + acc.Name);
            }
        } else {
            System.debug('No accounts with a "Hot" rating were found.');
        }
    }
}
