part of swagger.api;


@Entity()
class SimpleGroupResource {
  /* The name of the group. Max 50 characters */
  @Property(name: 'name')
  String name = null;
  
/* Unique name used in url and references. Uppercase, lowercase, numbers and hyphens only. Max 50 characters. Cannot be altered once created. Default: random UUID */
  @Property(name: 'unique_name')
  String uniqueName = null;
  
  SimpleGroupResource();

  @override
  String toString()  {
    return 'SimpleGroupResource[name=$name, uniqueName=$uniqueName, ]';
  }

}

