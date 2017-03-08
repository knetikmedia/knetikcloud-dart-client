part of swagger.api;


@Entity()
class Schedule {
  /* The duration of the repeatable events */
  @Property(name: 'duration')
  int duration = null;
  
/* The unit of time for the duration field */
  @Property(name: 'duration_unit')
  String durationUnit = null;
  //enum durationUnitEnum {  millisecond,  second,  minute,  hour,  day,  week,  month,  year,  };
/* How often the event is scheduled */
  @Property(name: 'repeat')
  String repeat = null;
  //enum repeatEnum {  DAILY,  WEEKLY,  };
  Schedule();

  @override
  String toString()  {
    return 'Schedule[duration=$duration, durationUnit=$durationUnit, repeat=$repeat, ]';
  }

}

