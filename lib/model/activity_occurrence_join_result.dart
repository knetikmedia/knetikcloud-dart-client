part of swagger.api;


@Entity()
class ActivityOccurrenceJoinResult {
  /* The details on the entitlement object needed to enter the occurrence (if any) */
  @Property(name: 'entitlement')
  ActivityEntitlementResource entitlement = null;
  
/* Zero if the user was/could be added to the occurrence. Jsapi error code indicating the reason of the failure otherwise */
  @Property(name: 'error_code')
  int errorCode = null;
  
/* An error message if failure */
  @Property(name: 'message')
  String message = null;
  
/* The user's id */
  @Property(name: 'user_id')
  int userId = null;
  
  ActivityOccurrenceJoinResult();

  @override
  String toString()  {
    return 'ActivityOccurrenceJoinResult[entitlement=$entitlement, errorCode=$errorCode, message=$message, userId=$userId, ]';
  }

}

