part of swagger.api;


@Entity()
class ActivityOccurrenceStatusWrapper {
  
  @Property(name: 'value')
  String value = null;
  //enum valueEnum {  SETUP,  OPEN,  LAUNCHING,  PLAYING,  FINISHED,  ABANDONED,  };
  ActivityOccurrenceStatusWrapper();

  @override
  String toString()  {
    return 'ActivityOccurrenceStatusWrapper[value=$value, ]';
  }

}

