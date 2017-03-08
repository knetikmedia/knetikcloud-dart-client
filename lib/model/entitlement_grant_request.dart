part of swagger.api;


@Entity()
class EntitlementGrantRequest {
  /* The ID of the entitlement item to grant */
  @Property(name: 'entitlement_id')
  int entitlementId = null;
  
  EntitlementGrantRequest();

  @override
  String toString()  {
    return 'EntitlementGrantRequest[entitlementId=$entitlementId, ]';
  }

}

