part of swagger.api;


@Entity()
class UserRelationshipReferenceResource {
  /* The url of the user's avatar image */
  @Property(name: 'avatar_url')
  String avatarUrl = null;
  
/* The context of the relationship */
  @Property(name: 'context')
  String context = null;
  
/* The public username of the user */
  @Property(name: 'display_name')
  String displayName = null;
  
/* The id of the user */
  @Property(name: 'id')
  int id = null;
  
/* The id of the relationship */
  @Property(name: 'relationship_id')
  int relationshipId = null;
  
/* The username of the user */
  @Property(name: 'username')
  String username = null;
  
  UserRelationshipReferenceResource();

  @override
  String toString()  {
    return 'UserRelationshipReferenceResource[avatarUrl=$avatarUrl, context=$context, displayName=$displayName, id=$id, relationshipId=$relationshipId, username=$username, ]';
  }

}

