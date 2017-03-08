part of swagger.api;


@Entity()
class DispositionCount {
  /* The number of users that have expressed this disposition */
  @Property(name: 'count')
  int count = null;
  
/* The name of the disposition this count is for */
  @Property(name: 'name')
  String name = null;
  
  DispositionCount();

  @override
  String toString()  {
    return 'DispositionCount[count=$count, name=$name, ]';
  }

}

