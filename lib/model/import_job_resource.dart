part of swagger.api;


@Entity()
class ImportJobResource {
  /* The id of the category to assign all questions in the import to */
  @Property(name: 'category_id')
  String categoryId = null;
  
/* The date the job was created in seconds since unix epoc */
  @Property(name: 'created_date')
  int createdDate = null;
  
/* The id of the job */
  @Property(name: 'id')
  int id = null;
  
/* A name for this import for later reference */
  @Property(name: 'name')
  String name = null;
  
/* Error information from validation */
  @Property(name: 'output')
  List<ImportJobOutputResource> output = [];
  
/* The number of questions form the CSV file. Filled in after validation */
  @Property(name: 'record_count')
  int recordCount = null;
  
/* The status of the job */
  @Property(name: 'status')
  String status = null;
  //enum statusEnum {  PENDING_VALIDATION,  VALIDATING,  VALID,  INVALID,  PENDING_PROCESS,  PROCESSING,  PROCESSED,  FAILED,  };
/* The date the job was last updated in seconds since unix epoc */
  @Property(name: 'updated_date')
  int updatedDate = null;
  
/* The url of a CSV file to pull trivia questions from. Cannot be changed after initial POST */
  @Property(name: 'url')
  String url = null;
  
/* The vendor who supplied this set of questions */
  @Property(name: 'vendor')
  String vendor = null;
  
  ImportJobResource();

  @override
  String toString()  {
    return 'ImportJobResource[categoryId=$categoryId, createdDate=$createdDate, id=$id, name=$name, output=$output, recordCount=$recordCount, status=$status, updatedDate=$updatedDate, url=$url, vendor=$vendor, ]';
  }

}

