part of swagger.api;


@Entity()
class Batch {
  /* The list of batch requests */
  @Property(name: 'batch')
  List<BatchRequest> batch = [];
  
/* The amount of time before a request token is returned instead of the batch result.  Default is 60.  Range is 0-300 */
  @Property(name: 'timeout')
  int timeout = null;
  
  Batch();

  @override
  String toString()  {
    return 'Batch[batch=$batch, timeout=$timeout, ]';
  }

}

