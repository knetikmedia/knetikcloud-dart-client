part of swagger.api;


@Entity()
class CoreActivityOccurrenceSettings {
  /* Whether the host can boot another user while the status is PLAYING. Must be false or null unless this setting is true in activity (or challenge if applicable). Null to inherit */
  @Property(name: 'boot_in_play')
  bool bootInPlay = null;
  
/* A custom address (url, ip or whatever is needed in your game) that users should connect to to play in this occurrence rather than the usual game server. Could be the ip address of the host for peer-to-peer play. Can only be set if the activity/challenge custom_launch_address_allowed is true. Max length: 255 */
  @Property(name: 'custom_launch_address')
  String customLaunchAddress = null;
  
/* Restriction for whether the host has control of the status once the game launches. If false they can only manage the game before (when setup and open). Cannot be true if activity/challenge has it false. Null to inherit */
  @Property(name: 'host_status_control')
  bool hostStatusControl = null;
  
/* Whether users can join while the status is PLAYING. Must be false or null unless this setting is true in activity (or challenge if applicable). Null to inherit */
  @Property(name: 'join_in_play')
  bool joinInPlay = null;
  
/* Whether users can leave while the status is PLAYING. Must be false or null unless this setting is true in activity (or challenge if applicable). Null to inherit */
  @Property(name: 'leave_in_play')
  bool leaveInPlay = null;
  
/* The maximum number of players the game can hold. Must be equal or less than activity (or must match challenge if applicable) */
  @Property(name: 'max_players')
  int maxPlayers = null;
  
/* The minimum number of players the game can hold. Must be equal or greater than activity (or must match challenge if applicable) */
  @Property(name: 'min_players')
  int minPlayers = null;
  
/* Restriction for whether the non-host players can control of the status in place of the host. Default: false */
  @Property(name: 'non_host_status_control')
  bool nonHostStatusControl = null;
  
/* Restriction for who is able to report game end and results. Admin is always able to send results as well. Must be equal or more restrictive than activity (or must match challenge if applicable). Default inherits */
  @Property(name: 'results_trust')
  String resultsTrust = null;
  //enum resultsTrustEnum {  none,  host,  all,  };
  CoreActivityOccurrenceSettings();

  @override
  String toString()  {
    return 'CoreActivityOccurrenceSettings[bootInPlay=$bootInPlay, customLaunchAddress=$customLaunchAddress, hostStatusControl=$hostStatusControl, joinInPlay=$joinInPlay, leaveInPlay=$leaveInPlay, maxPlayers=$maxPlayers, minPlayers=$minPlayers, nonHostStatusControl=$nonHostStatusControl, resultsTrust=$resultsTrust, ]';
  }

}

