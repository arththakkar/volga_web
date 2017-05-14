json.result do
  json.messages "ok"
  json.rstatus  "1"
  json.errorcode ""
end
json.data do
  json.areas do
  	json.array! @areas.each do |area|
  		json.id area.id
  		json.name area.name
    end
  end 
end