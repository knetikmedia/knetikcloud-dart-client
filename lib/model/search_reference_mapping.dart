part of swagger.api;


@Entity()
class SearchReferenceMapping {
  /* Unique identifier for the mapping to protect against duplicates */
  @Property(name: 'id')
  String id = null;
  
/* The field within the type that contains the id from the refType */
  @Property(name: 'ref_id_field')
  String refIdField = null;
  
/* The index type that the mapping pulls data from */
  @Property(name: 'ref_type')
  String refType = null;
  
/* A map whose keys are the field names in the refType and values are the field name in the type */
  @Property(name: 'source_field_to_destination_field')
  Map<String, String> sourceFieldToDestinationField = {};
  
/* The index type that the mapping is for */
  @Property(name: 'type')
  String type = null;
  
  SearchReferenceMapping();

  @override
  String toString()  {
    return 'SearchReferenceMapping[id=$id, refIdField=$refIdField, refType=$refType, sourceFieldToDestinationField=$sourceFieldToDestinationField, type=$type, ]';
  }

}

