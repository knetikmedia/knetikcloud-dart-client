part of swagger.api;


@Entity()
class VariableTypeResource {
  /* The base class of the type */
  @Property(name: 'base')
  String base = null;
  //enum baseEnum {  NUMBER,  INTEGER,  STRING,  DATE,  BOOLEAN,  };
/* Whether the type comes from a set of valid values that the system can provided (such as users) */
  @Property(name: 'enumerable')
  bool enumerable = null;
  
/* The name of the variable type. Used as the unique id */
  @Property(name: 'name')
  String name = null;
  
  VariableTypeResource();

  @override
  String toString()  {
    return 'VariableTypeResource[base=$base, enumerable=$enumerable, name=$name, ]';
  }

}

