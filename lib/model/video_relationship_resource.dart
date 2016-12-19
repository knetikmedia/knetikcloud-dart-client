part of swagger.api;


@Entity()
class VideoRelationshipResource {
  /* The owner of the relationship */
  @Property(name: 'from')
  SimpleReferenceResource«long» from = null;
  
/* The id of the relationship */
  @Property(name: 'id')
  int id = null;
  
/* Details about the relationship such as type or other information. Max length 10 characters */
  @Property(name: 'relationship_details')
  String relationshipDetails = null;
  
/* The target of the relationship. */
  @Property(name: 'to')
  SimpleReferenceResource«long» to = null;
  
  VideoRelationshipResource();

  @override
  String toString()  {
    return 'VideoRelationshipResource[from=$from, id=$id, relationshipDetails=$relationshipDetails, to=$to, ]';
  }

}

