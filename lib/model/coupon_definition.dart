part of swagger.api;


@Entity()
class CouponDefinition {
  /* A unique identifier for the discount. Can be used to remove the discount, and uniqueness within the cart will be enforced. */
  @Property(name: 'code')
  String code = null;
  
/* A description for the discount. */
  @Property(name: 'description')
  String description = null;
  
/* The type of discount in terms of how it deducts price. */
  @Property(name: 'discount_type')
  String discountType = null;
  //enum discountTypeEnum {  value,  percentage,  };
/* Whether this discount is exclusive and cannot be used in conjunction with other discounts/coupons. default=false */
  @Property(name: 'exclusive')
  bool exclusive = null;
  
/* For coupon_cart, a minimum total price that the cart must meet to be valid. */
  @Property(name: 'max_discount')
  double maxDiscount = null;
  
/* The maximum number of items to count this discount for (not for cart_coupon). */
  @Property(name: 'max_quantity')
  int maxQuantity = null;
  
/* For coupon_cart, a minimum total price that the cart must meet to be valid. */
  @Property(name: 'min_cart_total')
  double minCartTotal = null;
  
/* A name for the discount. */
  @Property(name: 'name')
  String name = null;
  
/* Whether this coupon is exclusive to itself or not (true means cannot add two of this same coupon to the same cart).  Default = false */
  @Property(name: 'self_exclusive')
  bool selfExclusive = null;
  
/* The id of the item this discount applies to, which must be present in the cart. Applies if coupon_type_hint is coupon_single_item or coupon_voucher. */
  @Property(name: 'target_item_id')
  int targetItemId = null;
  
/* The type of discount in terms of what it applies to. coupon_cart applies to the cart as a whole, other types apply to specific items based on different criteria. */
  @Property(name: 'type')
  String type = null;
  //enum typeEnum {  coupon_cart,  coupon_single_item,  coupon_voucher,  coupon_vendor,  coupon_tag,  };
/* Which tags this applies for (item must have at least one of them), if coupon_type is coupon_tag. */
  @Property(name: 'valid_for_tags')
  List<String> validForTags = [];
  
/* The amount of the discount. If discount_type is value then this is the raw currency amount to remove. If discount_type is percentage then this will be multiplied by the cart total or item price to get the discount amount (0.5 is half price). */
  @Property(name: 'value')
  double value = null;
  
/* Which vendor this applies for, if coupon_type is coupon_vendor. */
  @Property(name: 'vendor_id')
  int vendorId = null;
  
  CouponDefinition();

  @override
  String toString()  {
    return 'CouponDefinition[code=$code, description=$description, discountType=$discountType, exclusive=$exclusive, maxDiscount=$maxDiscount, maxQuantity=$maxQuantity, minCartTotal=$minCartTotal, name=$name, selfExclusive=$selfExclusive, targetItemId=$targetItemId, type=$type, validForTags=$validForTags, value=$value, vendorId=$vendorId, ]';
  }

}

