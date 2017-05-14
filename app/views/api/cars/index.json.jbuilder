json.result do
  json.messages "ok"
  json.rstatus  "1"
  json.errorcode ""
end
json.data do
  json.cars do
  	json.array! @cars.each do |car|
  		json.id car.id
  		json.name car.name
    end
  end 
end