part of swagger.api;


@Entity()
class SampleCountriesResponse {
  
  @Property(name: 'vendor_id1')
  List<Country> vendorId1 = [];
  

  @Property(name: 'vendor_id2')
  List<Country> vendorId2 = [];
  
  SampleCountriesResponse();

  @override
  String toString()  {
    return 'SampleCountriesResponse[vendorId1=$vendorId1, vendorId2=$vendorId2, ]';
  }

}

