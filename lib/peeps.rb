class Peeps

include DataMapper::Resource

  property :id,         Serial
  property :title,      String
  property :body,       Text      :length => 250
  property :created_at, DateTime

end