part of swagger.api;


@Entity()
class Affiliate {
  
  @Property(name: 'affiliate_key')
  String affiliateKey = null;
  

  @Property(name: 'id')
  int id = null;
  
  Affiliate();

  @override
  String toString()  {
    return 'Affiliate[affiliateKey=$affiliateKey, id=$id, ]';
  }

}

