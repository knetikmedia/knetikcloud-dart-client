part of swagger.api;


@Entity()
class Batch {
  
  @Property(name: 'batch')
  List<BatchRequest> batch = [];
  
  Batch();

  @override
  String toString()  {
    return 'Batch[batch=$batch, ]';
  }

}

