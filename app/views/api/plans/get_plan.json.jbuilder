json.result do
  json.messages "ok"
  json.rstatus  "1"
  json.errorcode ""
end
json.data do
  json.areas do
  	json.array! @plan.each do |plan|
  		json.plan_name plan
    end
  end 
end