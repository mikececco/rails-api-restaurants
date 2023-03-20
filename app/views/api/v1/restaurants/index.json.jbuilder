json.array! @restaurants do |restaurant|
  json.extract! restaurant, :id, :name, :address
end
# Jbuilder - extract from Restaurants array the Resturant ID-NAME-ADDRESS and send to API req
