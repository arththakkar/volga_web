json.result do
  json.messages "ok"
  json.rstatus  "1"
  json.errorcode ""
end
json.data do
  	json.extract! @confirm_driver, :id, :car_id, :car_model, :car_engine_number, :chassis_number, :varient, :color, :first_name, :middle_name, :last_name, :area_id, :mobile_number, :alternamte_number, :adhaar_number, :driving_licence_number, :badge_number, :address1, :address2, :email, :pan_number, :photo_id_type, :photo_id_number, :address_proof_type, :address_proof_number, :shift, :is_schedule, :scheme, :car_plate_number, :city, :birth_date, :insurance_policy_number, :insurance_expiry_date
end