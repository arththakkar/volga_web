class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :role_type
  has_one :confirm_franchise

  def is_admin?
  	self.role_type.name == "Admin"
  end

  def is_franchise?
  	self.role_type.name == "Franchise"
  end

  def is_employee?
    self.role_type.name == "Employee"
  end
end
