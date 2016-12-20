part of swagger.api;


@Entity()
class GroupMember {
  
  @Property(name: 'group')
  Group group = null;
  

  @Property(name: 'secondary')
  bool secondary = null;
  

  @Property(name: 'status')
  String status = null;
  //enum statusEnum {  moderator,  member,  };

  @Property(name: 'user')
  User user = null;
  
  GroupMember();

  @override
  String toString()  {
    return 'GroupMember[group=$group, secondary=$secondary, status=$status, user=$user, ]';
  }

}

