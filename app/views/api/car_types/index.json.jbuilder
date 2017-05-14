json.result do
  json.messages "ok"
  json.rstatus  "1"
  json.errorcode ""
end
json.data do
  json.car_types do
  	json.array! @car_types.each do |car_type|
  		json.id car_type.id
  		json.name car_type.name
    end
  end 
end