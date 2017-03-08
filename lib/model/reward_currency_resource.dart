part of swagger.api;


@Entity()
class RewardCurrencyResource {
  /* The code of the currency type to give */
  @Property(name: 'currency_code')
  String currencyCode = null;
  
/* The name of the currency reward to give.  Set by currency_code) */
  @Property(name: 'currency_name')
  String currencyName = null;
  
/* The highest number (worst) rank to give the reward to. Must be greater than or equal to minRank */
  @Property(name: 'max_rank')
  int maxRank = null;
  
/* The lowest number (best) rank to give the reward to. Must be greater than zero */
  @Property(name: 'min_rank')
  int minRank = null;
  
/* True if the value is actually a percentage of the intake */
  @Property(name: 'percent')
  bool percent = null;
  
/* The amount of currency to give. For percentage values, 0.5 is 50% */
  @Property(name: 'value')
  double value = null;
  
  RewardCurrencyResource();

  @override
  String toString()  {
    return 'RewardCurrencyResource[currencyCode=$currencyCode, currencyName=$currencyName, maxRank=$maxRank, minRank=$minRank, percent=$percent, value=$value, ]';
  }

}

