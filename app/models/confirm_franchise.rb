class ConfirmFranchise < ActiveRecord::Base
	belongs_to :user
	belongs_to :area
	has_many :confirm_drivers
	after_create :generate_franchise_code

	def generate_franchise_code
		part1 = self.name[0..2].to_s
		part2 = self.birthdate.day.to_s
		part3 = self.birthdate.month.to_s
		part4 = self.id.to_s
		code = part1 + part2 + part3 + part4
		self.franchise_code = code.gsub(/\s+/, "").downcase
		self.save
	end

	def autogenerate_franchise_login(franchise)
		first_half = self.name[0..2].to_s
		random_number = rand.to_s[2..5]
		password = first_half+random_number
		return password
	end
end
