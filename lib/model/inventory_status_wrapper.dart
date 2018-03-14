part of swagger.api;


@Entity()
class InventoryStatusWrapper {
  
  @Property(name: 'value')
  String value = null;
  //enum valueEnum {  pending,  active,  inactive,  };
  InventoryStatusWrapper();

  @override
  String toString()  {
    return 'InventoryStatusWrapper[value=$value, ]';
  }

}

