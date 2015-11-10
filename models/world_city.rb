class WorldCity
  include DataMapper::Resource

  property :id,         Serial
  property :city,       String,   length: 33
  property :city_ascii, String,   length: 39
  property :lat,        Decimal,  precision: 9, scale: 7
  property :lng,        Decimal,  precision: 9, scale: 7
  property :pop,        Decimal
  property :country,    String,   length: 32
  property :iso2,       String,   length: 3
  property :iso3,       String,   length: 3
  property :province,   String,   length: 43

  def location
    {
      lat: format("%.7f", lat),
      lng: format("%.7f", lng),
      pop: format("%.0f", pop)
    }
  end

  DataMapper.finalize
end
