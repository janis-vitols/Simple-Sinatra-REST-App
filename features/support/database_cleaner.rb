After do |scenario|
  Mongoid.models.each do |model|
    model.collection.drop
  end
end
