part of swagger.api;


@Entity()
class RewardSetResource {
  /* The date/time this resource was created in seconds since unix epoch */
  @Property(name: 'created_date')
  int createdDate = null;
  
/* The currency to give as rewards */
  @Property(name: 'currency_rewards')
  List<RewardCurrencyResource> currencyRewards = [];
  
/* The assigned unique ID for this reward set */
  @Property(name: 'id')
  int id = null;
  
/* The items to give as rewards */
  @Property(name: 'item_rewards')
  List<RewardItemResource> itemRewards = [];
  
/* A longer describe the reward set, usually included in details */
  @Property(name: 'long_description')
  String longDescription = null;
  
/* The maximum placing that will receive a reward */
  @Property(name: 'max_placing')
  int maxPlacing = null;
  
/* The user friendly name for this reward set */
  @Property(name: 'name')
  String name = null;
  
/* A short paragraph to describe the reward set, usually included in listings.  Max 255 characters */
  @Property(name: 'short_description')
  String shortDescription = null;
  
/* A provided unique key for this reward set */
  @Property(name: 'unique_key')
  String uniqueKey = null;
  
/* The date/time this resource was last updated in seconds since unix epoch */
  @Property(name: 'updated_date')
  int updatedDate = null;
  
  RewardSetResource();

  @override
  String toString()  {
    return 'RewardSetResource[createdDate=$createdDate, currencyRewards=$currencyRewards, id=$id, itemRewards=$itemRewards, longDescription=$longDescription, maxPlacing=$maxPlacing, name=$name, shortDescription=$shortDescription, uniqueKey=$uniqueKey, updatedDate=$updatedDate, ]';
  }

}

