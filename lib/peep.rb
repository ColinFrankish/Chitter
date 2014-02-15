class Peep

include DataMapper::Resource

  property :id,         Serial
  property :title,      Text
  property :message,    Text,      :length => 250
  property :created_at, DateTime

end