part of swagger.api;


@Entity()
class GroupResource {
  /* A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type */
  @Property(name: 'additional_properties')
  Map<String, Property> additionalProperties = {};
  
/* A description of the group */
  @Property(name: 'description')
  String description = null;
  
/* The number of users in the group */
  @Property(name: 'member_count')
  int memberCount = null;
  
/* A message of the day for members of the group */
  @Property(name: 'message_of_the_day')
  String messageOfTheDay = null;
  
/* The name of the group. Max 50 characters */
  @Property(name: 'name')
  String name = null;
  
/* The unique name of another group that this group is a subset of */
  @Property(name: 'parent')
  String parent = null;
  
/* The status which describes whether other users can freely join the group or not */
  @Property(name: 'status')
  String status = null;
  //enum statusEnum {  open,  closed,  };
/* The number of users in child groups */
  @Property(name: 'sub_member_count')
  int subMemberCount = null;
  
/* Tags for search */
  @Property(name: 'tags')
  List<String> tags = [];
  
/* A group template this group is validated against. May be null and no validation of additional_properties will be done */
  @Property(name: 'template')
  String template = null;
  
/* Unique name used in url and references. Uppercase, lowercase, numbers and hyphens only. Max 50 characters. Cannot be altered once created. Default: random UUID */
  @Property(name: 'unique_name')
  String uniqueName = null;
  
  GroupResource();

  @override
  String toString()  {
    return 'GroupResource[additionalProperties=$additionalProperties, description=$description, memberCount=$memberCount, messageOfTheDay=$messageOfTheDay, name=$name, parent=$parent, status=$status, subMemberCount=$subMemberCount, tags=$tags, template=$template, uniqueName=$uniqueName, ]';
  }

}

