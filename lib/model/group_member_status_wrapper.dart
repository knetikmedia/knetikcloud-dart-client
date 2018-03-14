part of swagger.api;


@Entity()
class GroupMemberStatusWrapper {
  
  @Property(name: 'value')
  String value = null;
  //enum valueEnum {  moderator,  member,  };
  GroupMemberStatusWrapper();

  @override
  String toString()  {
    return 'GroupMemberStatusWrapper[value=$value, ]';
  }

}

