part of swagger.api;


@Entity()
class IdRef {
  
  @Property(name: 'id')
  int id = null;
  
  IdRef();

  @override
  String toString()  {
    return 'IdRef[id=$id, ]';
  }

}

