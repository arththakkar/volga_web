json.result do
  json.messages "ok"
  json.rstatus  "1"
  json.errorcode ""
end
json.data do
  	json.array! @confirm_drivers.each do |confirm_driver|
  		json.id confirm_driver.id 
  		json.driver_name confirm_driver.first_name + " " + confirm_driver.last_name + ": " + confirm_driver.area.name
    end 
end