part of swagger.api;


@Entity()
class VendorResource {
  /* Whether the vendor is active.  Default = true */
  @Property(name: 'active')
  bool active = null;
  
/* A map of additional properties, keyed on the property name (private). Must match the names and types defined in the template for this user type, or be an extra not from the template */
  @Property(name: 'additional_properties')
  Map<String, Property> additionalProperties = {};
  
/* The date the vendor was added. Unix timestamp in seconds */
  @Property(name: 'create_date')
  int createDate = null;
  
/* A description of the vendor */
  @Property(name: 'description')
  String description = null;
  
/* The id of the vendor */
  @Property(name: 'id')
  int id = null;
  
/* The url of an image for the vendor */
  @Property(name: 'image_url')
  String imageUrl = null;
  
/* Whether the vendor needs to manually approve invoices before they are paid.  A separate checkout flow is required in this case.  Default: false */
  @Property(name: 'manual_approval')
  bool manualApproval = null;
  
/* The name of the vendor */
  @Property(name: 'name')
  String name = null;
  
/* The primary email address for the vendor */
  @Property(name: 'primary_contact_email')
  String primaryContactEmail = null;
  
/* The name of the primary contact for the vendor */
  @Property(name: 'primary_contact_name')
  String primaryContactName = null;
  
/* The primary phone number for the vendor */
  @Property(name: 'primary_contact_phone')
  String primaryContactPhone = null;
  
/* The email address for sale inquiries for the vendor */
  @Property(name: 'sales_email')
  String salesEmail = null;
  
/* The email address for support inquiries for the vendor */
  @Property(name: 'support_email')
  String supportEmail = null;
  
/* A user template this user is validated against (private). May be null and no validation of properties will be done */
  @Property(name: 'template')
  String template = null;
  
/* The date the vendor was last updated. Unix timestamp in seconds */
  @Property(name: 'update_date')
  int updateDate = null;
  
/* The url for the vendor's site */
  @Property(name: 'url')
  String url = null;
  
  VendorResource();

  @override
  String toString()  {
    return 'VendorResource[active=$active, additionalProperties=$additionalProperties, createDate=$createDate, description=$description, id=$id, imageUrl=$imageUrl, manualApproval=$manualApproval, name=$name, primaryContactEmail=$primaryContactEmail, primaryContactName=$primaryContactName, primaryContactPhone=$primaryContactPhone, salesEmail=$salesEmail, supportEmail=$supportEmail, template=$template, updateDate=$updateDate, url=$url, ]';
  }

}

