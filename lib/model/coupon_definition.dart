part of swagger.api;


@Entity()
class CouponDefinition {
  
  @Property(name: 'code')
  String code = null;
  

  @Property(name: 'description')
  String description = null;
  

  @Property(name: 'discount_type')
  String discountType = null;
  //enum discountTypeEnum {  value,  percentage,  };

  @Property(name: 'exclusive')
  bool exclusive = null;
  

  @Property(name: 'max_discount')
  double maxDiscount = null;
  

  @Property(name: 'max_quantity')
  int maxQuantity = null;
  

  @Property(name: 'min_cart_total')
  double minCartTotal = null;
  

  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'self_exclusive')
  bool selfExclusive = null;
  

  @Property(name: 'target_item_id')
  int targetItemId = null;
  

  @Property(name: 'type')
  String type = null;
  //enum typeEnum {  coupon_cart,  coupon_single_item,  coupon_voucher,  coupon_vendor,  coupon_tag,  };

  @Property(name: 'valid_for_tags')
  List<String> validForTags = [];
  

  @Property(name: 'value')
  double value = null;
  

  @Property(name: 'vendor_id')
  int vendorId = null;
  
  CouponDefinition();

  @override
  String toString()  {
    return 'CouponDefinition[code=$code, description=$description, discountType=$discountType, exclusive=$exclusive, maxDiscount=$maxDiscount, maxQuantity=$maxQuantity, minCartTotal=$minCartTotal, name=$name, selfExclusive=$selfExclusive, targetItemId=$targetItemId, type=$type, validForTags=$validForTags, value=$value, vendorId=$vendorId, ]';
  }

}

