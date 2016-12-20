part of swagger.api;


@Entity()
class ImportJobOutputResource {
  /* The description of the import job */
  @Property(name: 'description')
  String description = null;
  
/* The line number of the import job */
  @Property(name: 'line_number')
  int lineNumber = null;
  
  ImportJobOutputResource();

  @override
  String toString()  {
    return 'ImportJobOutputResource[description=$description, lineNumber=$lineNumber, ]';
  }

}

