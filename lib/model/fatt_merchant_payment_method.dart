part of swagger.api;


@Entity()
class FattMerchantPaymentMethod {
  
  @Property(name: 'address1')
  String address1 = null;
  

  @Property(name: 'address2')
  String address2 = null;
  

  @Property(name: 'address_city')
  String addressCity = null;
  

  @Property(name: 'address_country')
  String addressCountry = null;
  

  @Property(name: 'address_state')
  String addressState = null;
  

  @Property(name: 'address_zip')
  String addressZip = null;
  
/* Last four digits of the credit card */
  @Property(name: 'card_last_four')
  String cardLastFour = null;
  

  @Property(name: 'created_at')
  String createdAt = null;
  
/* Unique FattMerchant customer ID */
  @Property(name: 'customer_id')
  String customerId = null;
  

  @Property(name: 'deleted_at')
  String deletedAt = null;
  

  @Property(name: 'id')
  String id = null;
  
/* Nickname given to the FattMerchant payment method */
  @Property(name: 'nickname')
  String nickname = null;
  

  @Property(name: 'updated_at')
  String updatedAt = null;
  
  FattMerchantPaymentMethod();

  @override
  String toString()  {
    return 'FattMerchantPaymentMethod[address1=$address1, address2=$address2, addressCity=$addressCity, addressCountry=$addressCountry, addressState=$addressState, addressZip=$addressZip, cardLastFour=$cardLastFour, createdAt=$createdAt, customerId=$customerId, deletedAt=$deletedAt, id=$id, nickname=$nickname, updatedAt=$updatedAt, ]';
  }

}

