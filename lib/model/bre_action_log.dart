part of swagger.api;


@Entity()
class BreActionLog {
  /* The name of the action */
  @Property(name: 'name')
  String name = null;
  
/* The runtime of the action in milliseconds */
  @Property(name: 'runtime')
  int runtime = null;
  
/* The status of the action (ran, failed) */
  @Property(name: 'status')
  String status = null;
  
  BreActionLog();

  @override
  String toString()  {
    return 'BreActionLog[name=$name, runtime=$runtime, status=$status, ]';
  }

}

