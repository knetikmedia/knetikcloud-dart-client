part of swagger.api;


@Entity()
class SimpleWallet {
  /* The current balance of the wallet */
  @Property(name: 'balance')
  double balance = null;
  
/* The ISO currency code for the wallet */
  @Property(name: 'code')
  String code = null;
  
/* The name of the currency stored in the wallet */
  @Property(name: 'currency_name')
  String currencyName = null;
  
/* The unique ID of the wallet */
  @Property(name: 'id')
  int id = null;
  
/* The ID of the user to whom the wallet belongs */
  @Property(name: 'user_id')
  int userId = null;
  
  SimpleWallet();

  @override
  String toString()  {
    return 'SimpleWallet[balance=$balance, code=$code, currencyName=$currencyName, id=$id, userId=$userId, ]';
  }

}

