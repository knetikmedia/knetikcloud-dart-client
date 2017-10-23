part of swagger.api;


@Entity()
class GroupMemberResource {
  /* A map of additional properties, keyed on the property name (private). Must match the names and types defined in the template for this type, or be an extra not from the template */
  @Property(name: 'additional_properties')
  Map<String, Property> additionalProperties = {};
  
/* The url of the user's avatar image */
  @Property(name: 'avatar_url')
  String avatarUrl = null;
  
/* The public username of the user */
  @Property(name: 'display_name')
  String displayName = null;
  
/* The id of the user */
  @Property(name: 'id')
  int id = null;
  
/* The position of the member in the group if applicable. Read notes for details */
  @Property(name: 'order')
  String order = null;
  
/* The member's access level. Default: member */
  @Property(name: 'status')
  String status = null;
  //enum statusEnum {  moderator,  member,  };
/* A template this member additional properties are validated against (private). May be null and no validation of properties will be done */
  @Property(name: 'template')
  String template = null;
  
/* The username of the user */
  @Property(name: 'username')
  String username = null;
  
  GroupMemberResource();

  @override
  String toString()  {
    return 'GroupMemberResource[additionalProperties=$additionalProperties, avatarUrl=$avatarUrl, displayName=$displayName, id=$id, order=$order, status=$status, template=$template, username=$username, ]';
  }

}

