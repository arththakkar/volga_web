class ConfirmDriver < ActiveRecord::Base
  belongs_to :car
  belongs_to :area
  has_many :family_details
  accepts_nested_attributes_for :family_details, allow_destroy: true

  def full_name
  	"#{first_name} #{middle_name} #{last_name}"
  end
end
