part of swagger.api;


@Entity()
class RewardItemResource {
  /* The id of the item to reward */
  @Property(name: 'item_id')
  int itemId = null;
  
/* The name of the item to reward (read only, set by id) */
  @Property(name: 'item_name')
  String itemName = null;
  
/* The highest number (worst) rank to give the reward to. Must be greater than or equal to minRank */
  @Property(name: 'max_rank')
  int maxRank = null;
  
/* The lowest number (best) rank to give the reward to. Must be greater than zero */
  @Property(name: 'min_rank')
  int minRank = null;
  
/* How many copies to give */
  @Property(name: 'quantity')
  int quantity = null;
  
  RewardItemResource();

  @override
  String toString()  {
    return 'RewardItemResource[itemId=$itemId, itemName=$itemName, maxRank=$maxRank, minRank=$minRank, quantity=$quantity, ]';
  }

}

