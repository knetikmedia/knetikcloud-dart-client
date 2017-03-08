part of swagger.api;


@Entity()
class PageResource«GroupMemberResource» {
  
  @Property(name: 'content')
  List<GroupMemberResource> content = [];
  

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
  List<Order> sort = [];
  

  @Property(name: 'total_elements')
  int totalElements = null;
  

  @Property(name: 'total_pages')
  int totalPages = null;
  
  PageResource«GroupMemberResource»();

  @override
  String toString()  {
    return 'PageResource«GroupMemberResource»[content=$content, first=$first, last=$last, number=$number, numberOfElements=$numberOfElements, size=$size, sort=$sort, totalElements=$totalElements, totalPages=$totalPages, ]';
  }

}

