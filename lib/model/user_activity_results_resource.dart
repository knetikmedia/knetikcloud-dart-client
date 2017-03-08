part of swagger.api;


@Entity()
class UserActivityResultsResource {
  /* Any currency rewarded to this user */
  @Property(name: 'currency_rewards')
  List<RewardCurrencyResource> currencyRewards = [];
  
/* Any items rewarded to this user */
  @Property(name: 'item_rewards')
  List<RewardItemResource> itemRewards = [];
  
/* The position of the user in the leaderboard. Null means non-compete or disqualification */
  @Property(name: 'rank')
  int rank = null;
  
/* The raw score in this leaderboard. Null means non-compete or disqualification */
  @Property(name: 'score')
  int score = null;
  
/* Any tags for the metric. Each unique tag will translate into a unique leaderboard. Maximum 5 tags and 50 characters each */
  @Property(name: 'tags')
  List<String> tags = [];
  
/* The number of users tied at this rank, including this user. 1 means no tie */
  @Property(name: 'ties')
  int ties = null;
  
/* The player for this entry */
  @Property(name: 'user')
  SimpleUserResource user = null;
  
  UserActivityResultsResource();

  @override
  String toString()  {
    return 'UserActivityResultsResource[currencyRewards=$currencyRewards, itemRewards=$itemRewards, rank=$rank, score=$score, tags=$tags, ties=$ties, user=$user, ]';
  }

}

