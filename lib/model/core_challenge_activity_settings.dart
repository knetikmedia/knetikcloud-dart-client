part of swagger.api;


@Entity()
class CoreChallengeActivitySettings {
  /* Whether the host can boot a user while the status is PLAYING. Null to inherit from activity */
  @Property(name: 'boot_in_play')
  bool bootInPlay = null;
  
/* A custom address (url, ip or whatever is needed in your game) that users should connect to to play in this challenge rather than the usual game server. Max length: 255 */
  @Property(name: 'custom_launch_address')
  String customLaunchAddress = null;
  
/* Restriction for whether the host creating an occurrence can specify a custom launch address (such as their own ip address). Will override the challenge's custom_launch_address if they do. Null to inherit from activity */
  @Property(name: 'custom_launch_address_allowed')
  bool customLaunchAddressAllowed = null;
  
/* Restriction for who can host an occurrence. admin disallows regular users, player means the user must also be a player in the occurrence if not admin, non-player means the user has the option to host without being a player. Null to inherit */
  @Property(name: 'host_option')
  String hostOption = null;
  //enum hostOptionEnum {  admin_only,  player,  non_player,  };
/* Restriction for whether the host has control of the status once the game launches. If false they can only manage the game before (when setup and open). Max length: 255. Null to inherit from activity */
  @Property(name: 'host_status_control')
  bool hostStatusControl = null;
  
/* Whether users can join while the status is PLAYING. Null to inherit from activity */
  @Property(name: 'join_in_play')
  bool joinInPlay = null;
  
/* Whether users can leave while the status is PLAYING. Null to inherit from activity */
  @Property(name: 'leave_in_play')
  bool leaveInPlay = null;
  
/* The maximum number of players the game can hold. Null to inherit from activity */
  @Property(name: 'max_players')
  int maxPlayers = null;
  
/* The minimum number of players the game can hold. Null to inherit from activity */
  @Property(name: 'min_players')
  int minPlayers = null;
  
/* Restriction for who is able to report game end and results. Admin is always able to send results as well. Null to inherit from activity */
  @Property(name: 'results_trust')
  String resultsTrust = null;
  //enum resultsTrustEnum {  none,  host,  all,  };
  CoreChallengeActivitySettings();

  @override
  String toString()  {
    return 'CoreChallengeActivitySettings[bootInPlay=$bootInPlay, customLaunchAddress=$customLaunchAddress, customLaunchAddressAllowed=$customLaunchAddressAllowed, hostOption=$hostOption, hostStatusControl=$hostStatusControl, joinInPlay=$joinInPlay, leaveInPlay=$leaveInPlay, maxPlayers=$maxPlayers, minPlayers=$minPlayers, resultsTrust=$resultsTrust, ]';
  }

}

