part of swagger.api;


@Entity()
class GroupMemberResource {
  /* A map of additional properties, keyed on the property name (private). Must match the names and types defined in the template for this type, or be an extra not from the template */
  @Property(name: 'additional_properties')
  Map<String, Property> additionalProperties = {};
  
/* The group. Id is the unique name */
  @Property(name: 'group')
  SimpleGroupResource group = null;
  
/* Whether this membership is explicit (the user was added directly to the group) or implicit (the user was added only to one or more child groups) */
  @Property(name: 'implicit')
  bool implicit = null;
  
/* The id of the membership entry */
  @Property(name: 'membership_id')
  int membershipId = null;
  
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
  
/* The user */
  @Property(name: 'user')
  SimpleUserResource user = null;
  
  GroupMemberResource();

  @override
  String toString()  {
    return 'GroupMemberResource[additionalProperties=$additionalProperties, group=$group, implicit=$implicit, membershipId=$membershipId, order=$order, status=$status, template=$template, user=$user, ]';
  }

}

