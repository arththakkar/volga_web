json.result do
  json.messages "ok"
  json.rstatus  "1"
  json.errorcode ""
end
json.data do
  json.cars do
  	json.array! @confirm_drivers, :id, :car_id, :car_model, :car_engine_number, :chassis_number, :varient, :color, :first_name, :middle_name, :last_name, :adhaar_number, :driving_licence_number, :badge_number, :address1, :address2, :area_id, :mobile_number, :alternamte_number, :email, :pan_number, :photo_id_type, :photo_id_number, :address_proof_type, :address_proof_number, :shift, :is_schedule, :scheme, :created_at, :updated_at, :car_plate_number, :city, :birth_date, :confirm_franchise_id, :insurance_policy_number, :insurance_expiry_date
    end
  end 
end