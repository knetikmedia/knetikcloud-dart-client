part of swagger.api;


@Entity()
class GuestPlayable {
  
  @Property(name: 'description')
  String description = null;
  
/* Used for polymorphic type recognition and thus must match an expected type with additional properties */
  @Property(name: 'type_hint')
  String typeHint = null;
  
/* Whether guests are allowed to use items */
  @Property(name: 'allowed')
  bool allowed = null;
  
/* Whether guests are allowed on the leaderboard */
  @Property(name: 'leaderboard')
  bool leaderboard = null;
  
  GuestPlayable();

  @override
  String toString()  {
    return 'GuestPlayable[description=$description, typeHint=$typeHint, allowed=$allowed, leaderboard=$leaderboard, ]';
  }

}

