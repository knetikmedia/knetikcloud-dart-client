part of swagger.api;


@Entity()
class BatchResult {
  /* List of batch responses.  Returns in the order requested */
  @Property(name: 'batch_return')
  List<BatchReturn> batchReturn = [];
  
/* The date the batch call started processing */
  @Property(name: 'created_date')
  int createdDate = null;
  
/* The token to use at the /batch/{token} endpoint if the request times out */
  @Property(name: 'id')
  String id = null;
  
/* The date the batch call finished processing */
  @Property(name: 'updated_date')
  int updatedDate = null;
  
  BatchResult();

  @override
  String toString()  {
    return 'BatchResult[batchReturn=$batchReturn, createdDate=$createdDate, id=$id, updatedDate=$updatedDate, ]';
  }

}

