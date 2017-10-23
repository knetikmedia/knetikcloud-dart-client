part of swagger.api;


@Entity()
class ActionContext«object» {
  /* The mapping of the action context */
  @Property(name: 'mapping')
  Object mapping = null;
  
/* The name of the action */
  @Property(name: 'type')
  String type = null;
  
  ActionContext«object»();

  @override
  String toString()  {
    return 'ActionContext«object»[mapping=$mapping, type=$type, ]';
  }

}

