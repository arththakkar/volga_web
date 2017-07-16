class ConfirmDriver < ActiveRecord::Base
  belongs_to :car
  belongs_to :area
  has_many :family_details, :dependent => :destroy
  has_one :driver_bank_detail
  belongs_to :confirm_franchise
  accepts_nested_attributes_for :family_details, allow_destroy: true
  accepts_nested_attributes_for :driver_bank_detail, allow_destroy: true

  def full_name
  	"#{first_name} #{middle_name} #{last_name}"
  end
end
