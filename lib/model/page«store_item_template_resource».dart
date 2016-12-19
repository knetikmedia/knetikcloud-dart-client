part of swagger.api;


@Entity()
class Page«StoreItemTemplateResource» {
  
  @Property(name: 'content')
  List<StoreItemTemplateResource> content = [];
  

  @Property(name: 'first')
  bool first = null;
  

  @Property(name: 'last')
  bool last = null;
  

  @Property(name: 'number')
  int number = null;
  

  @Property(name: 'number_of_elements')
  int numberOfElements = null;
  

  @Property(name: 'size')
  int size = null;
  

  @Property(name: 'sort')
  Sort sort = null;
  

  @Property(name: 'total_elements')
  int totalElements = null;
  

  @Property(name: 'total_pages')
  int totalPages = null;
  
  Page«StoreItemTemplateResource»();

  @override
  String toString()  {
    return 'Page«StoreItemTemplateResource»[content=$content, first=$first, last=$last, number=$number, numberOfElements=$numberOfElements, size=$size, sort=$sort, totalElements=$totalElements, totalPages=$totalPages, ]';
  }

}

