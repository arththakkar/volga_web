json.result do
  json.messages "ok"
  json.rstatus  "1"
  json.errorcode ""
end
json.data do
	if @type == "FranchiseLeader"
	  json.name @franchise_leader.name
	  json.mobile_number @franchise_leader.mobile_number
	end
	if @type == "Franchise"
	  json.name @franchise.name
	  json.mobile_number @franchise.mobile_number
	end
end