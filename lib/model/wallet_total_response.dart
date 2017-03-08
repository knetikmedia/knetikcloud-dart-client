part of swagger.api;


@Entity()
class WalletTotalResponse {
  /* The currency code */
  @Property(name: 'currency_code')
  String currencyCode = null;
  
/* The sum of all wallets in the system for this currency */
  @Property(name: 'total')
  double total = null;
  
  WalletTotalResponse();

  @override
  String toString()  {
    return 'WalletTotalResponse[currencyCode=$currencyCode, total=$total, ]';
  }

}

