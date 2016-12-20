part of swagger.api;


@Entity()
class StoreListRequest {
  /* Whether the location is ignored */
  @Property(name: 'ignore_location')
  bool ignoreLocation = null;
  
/* Whether the item is in stock */
  @Property(name: 'in_stock_only')
  bool inStockOnly = null;
  
/* The amount of items returned */
  @Property(name: 'limit')
  int limit = null;
  
/* The page of the request */
  @Property(name: 'page')
  int page = null;
  
/* Whether the catalog is used */
  @Property(name: 'use_catalog')
  bool useCatalog = null;
  
  StoreListRequest();

  @override
  String toString()  {
    return 'StoreListRequest[ignoreLocation=$ignoreLocation, inStockOnly=$inStockOnly, limit=$limit, page=$page, useCatalog=$useCatalog, ]';
  }

}

