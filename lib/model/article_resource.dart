part of swagger.api;


@Entity()
class ArticleResource {
  /* Whether the article is active */
  @Property(name: 'active')
  bool active = null;
  
/* A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type */
  @Property(name: 'additional_properties')
  Map<String, Property> additionalProperties = {};
  
/* The body of the article */
  @Property(name: 'body')
  String body = null;
  
/* The category for the article */
  @Property(name: 'category')
  NestedCategory category = null;
  
/* The date/time this resource was created in seconds since unix epoch */
  @Property(name: 'created_date')
  int createdDate = null;
  
/* The id of the article */
  @Property(name: 'id')
  String id = null;
  
/* The tags for the article */
  @Property(name: 'tags')
  List<String> tags = [];
  
/* An article template this article is validated against (private). May be null and no validation of additional_properties will be done */
  @Property(name: 'template')
  String template = null;
  
/* The title of the article */
  @Property(name: 'title')
  String title = null;
  
/* The date/time this resource was last updated in seconds since unix epoch */
  @Property(name: 'updated_date')
  int updatedDate = null;
  
  ArticleResource();

  @override
  String toString()  {
    return 'ArticleResource[active=$active, additionalProperties=$additionalProperties, body=$body, category=$category, createdDate=$createdDate, id=$id, tags=$tags, template=$template, title=$title, updatedDate=$updatedDate, ]';
  }

}

