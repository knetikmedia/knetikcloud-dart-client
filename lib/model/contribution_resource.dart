part of swagger.api;


@Entity()
class ContributionResource {
  /* A reference to the contributing artist */
  @Property(name: 'artist')
  SimpleReferenceResource«long» artist = null;
  
/* A reference to the media being contributed to */
  @Property(name: 'media')
  SimpleReferenceResource«long» media = null;
  
/* The nature of the contribution (role of the artist as in 'producer', 'performer', etc) */
  @Property(name: 'role')
  String role = null;
  
  ContributionResource();

  @override
  String toString()  {
    return 'ContributionResource[artist=$artist, media=$media, role=$role, ]';
  }

}

